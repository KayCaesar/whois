# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.dm/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.dm.rb'

describe Whois::Record::Parser::WhoisNicDm, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.dm/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This data is provided by DM REGISTRY for information purposes only in accordance with the DM REGISTRY TLD Privacy Policy. It is intended to assist persons to obtain information about or related to domain name registration records. DM REGISTRY does not guarantee its accuracy. By submitting this query, you agree to abide as follows:\nYou agree to use this data only for lawful purposes and that under no circumstances will you permit this data to 1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone or fax (spam); nor 2) enable high volume, automated, electronic processes to the systems of DM REGISTRY or Registrars, except as reasonably required to register new domain names or modify existing registrations; nor 3) will you generate a database of registered domain names and registrant data.\nThese terms may be changed without prior notice. By submitting this query, you agree to abide by this policy.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.dm")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
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
      expect(subject.created_on).to eq(Time.parse("2004-08-23 23:00:00"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2012-07-25 19:49:18"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2013-08-23 23:00:00"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq(nil)
      expect(subject.registrar.name).to eq("MarkMonitor Inc.")
      expect(subject.registrar.organization).to eq(nil)
      expect(subject.registrar.url).to eq("www.markmonitor.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("P-CQG21")
      expect(subject.registrant_contacts[0].name).to eq("Company Google Inc.")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.registrant_contacts[0].city).to eq("Mountain View")
      expect(subject.registrant_contacts[0].zip).to eq("94043")
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("P-DNA22")
      expect(subject.admin_contacts[0].name).to eq("DNS Admin")
      expect(subject.admin_contacts[0].organization).to eq("Google Inc.")
      expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre")
      expect(subject.admin_contacts[0].city).to eq("Mountain View")
      expect(subject.admin_contacts[0].zip).to eq("94043")
      expect(subject.admin_contacts[0].state).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq(nil)
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("P-DXA21")
      expect(subject.technical_contacts[0].name).to eq("DNS Admin")
      expect(subject.technical_contacts[0].organization).to eq("Google Inc.")
      expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre")
      expect(subject.technical_contacts[0].city).to eq("Mountain View")
      expect(subject.technical_contacts[0].zip).to eq("94043")
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq(nil)
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(4).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.google.com")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.google.com")
      expect(subject.nameservers[2]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.google.com")
      expect(subject.nameservers[3]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.google.com")
    end
  end
end
