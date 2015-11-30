# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.space/space/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.space.rb'

describe Whois::Record::Parser::WhoisNicSpace, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.space/space/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Access to the whois service is rate limited. For more information, please see https://registrar-console.centralnic.com/pub/whois_guidance.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("nic.space")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("D2361836-CNIC")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["ok https://icann.org/epp#ok"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2014-04-10T09:14:07.0Z"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2015-04-04T00:14:21.0Z"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2016-04-10T23:59:59.0Z"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("9999")
      expect(subject.registrar.name).to eq("CentralNic Ltd")
      expect(subject.registrar.organization).to eq(nil)
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("C11480")
      expect(subject.registrant_contacts[0].name).to eq("Domain Administrator")
      expect(subject.registrant_contacts[0].organization).to eq("CentralNic Ltd")
      expect(subject.registrant_contacts[0].address).to eq("35-39 Moorgate")
      expect(subject.registrant_contacts[0].city).to eq("London")
      expect(subject.registrant_contacts[0].zip).to eq("EC2R 6AR")
      expect(subject.registrant_contacts[0].state).to eq("")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("GB")
      expect(subject.registrant_contacts[0].phone).to eq("+44.2033880600")
      expect(subject.registrant_contacts[0].fax).to eq("+44.2033880601")
      expect(subject.registrant_contacts[0].email).to eq("domains@centralnic.com")
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("C11480")
      expect(subject.admin_contacts[0].name).to eq("Domain Administrator")
      expect(subject.admin_contacts[0].organization).to eq("CentralNic Ltd")
      expect(subject.admin_contacts[0].address).to eq("35-39 Moorgate")
      expect(subject.admin_contacts[0].city).to eq("London")
      expect(subject.admin_contacts[0].zip).to eq("EC2R 6AR")
      expect(subject.admin_contacts[0].state).to eq("")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("GB")
      expect(subject.admin_contacts[0].phone).to eq("+44.2033880600")
      expect(subject.admin_contacts[0].fax).to eq("+44.2033880601")
      expect(subject.admin_contacts[0].email).to eq("domains@centralnic.com")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].id).to eq("C11480")
      expect(subject.technical_contacts[0].name).to eq("Domain Administrator")
      expect(subject.technical_contacts[0].organization).to eq("CentralNic Ltd")
      expect(subject.technical_contacts[0].address).to eq("35-39 Moorgate")
      expect(subject.technical_contacts[0].city).to eq("London")
      expect(subject.technical_contacts[0].zip).to eq("EC2R 6AR")
      expect(subject.technical_contacts[0].state).to eq("")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.2033880600")
      expect(subject.technical_contacts[0].fax).to eq("+44.2033880601")
      expect(subject.technical_contacts[0].email).to eq("domains@centralnic.com")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(6)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns0.centralnic-dns.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1.centralnic-dns.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns2.centralnic-dns.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns3.centralnic-dns.com")
      expect(subject.nameservers[4]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[4].name).to eq("ns4.centralnic-dns.com")
      expect(subject.nameservers[5]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[5].name).to eq("ns5.centralnic-dns.com")
    end
  end
end
