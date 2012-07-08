class Cookie
  def self.domain(host)
    return "."+ host[host.rindex('yougu')..-1] rescue ""
  end
end