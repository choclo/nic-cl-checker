#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'net/smtp'

class Domains
  def initialize(*domains)
    @domains = domains
    end

  def check_dom(*domains)
    domains.each do |domain|
    url = "http://www.nic.cl/registry/Whois.do?d=#{domain}&buscar=Submit"

    doc = Nokogiri::HTML(open(url))

    data = doc.search("[text()*='Nombre de dominio no existe.']")

    if data.empty?
    puts "\nYour domain #{domain} is already registered :("
    else
      message = <<-END_OF_MESSAGE
      From: Servidor CLHOST <tomas@clhost.tomasolivares.com>
      To: Tomas Olivares <tolivares@gmail.com>
      Subject: Domain #{domain} Available!
      Date: #{Time.now}

      Your domain #{domain} has just become available!
      Grab it while it lasts at https://clientes.nic.cl/registrar/agregarDominio.do
      END_OF_MESSAGE
      

      Net::SMTP.start('localhost', 25) do |smtp|
        smtp.send_message message,
        'tomas@clhost.tov.cl',
        'tolivares@gmail.com'
        smtp.finish
      end
    end
  end
end
end

newdom = Domains.new(*ARGV)
newdom.check_dom(*ARGV)