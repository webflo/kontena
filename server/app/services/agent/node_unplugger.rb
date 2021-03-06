require_relative '../grid_scheduler'

module Agent
  class NodeUnplugger
    include Logging

    attr_reader :node, :grid

    # @param [HostNode] node
    def initialize(node)
      @node = node
      @grid = node.grid
    end

    def unplug!
      begin
        self.update_node
      rescue => exc
        error exc.message
      end
    end

    def update_node
      node.update_attribute(:connected, false)
      deleted_at = Time.now.utc
      node.containers.unscoped.where(:container_type.ne => 'volume').each do |c|
        c.with(safe: false).set(:deleted_at => deleted_at)
      end
    end
  end
end
