# frozen_string_literal: true
require "email_validator"

RSpec.describe EmailValidator::Validator do
  it "retorna true para e-mails válidos" do
    expect(EmailValidator::Validator.valid?("teste@example.com")).to eq(true)
    expect(EmailValidator::Validator.valid?("user.name+tag@sub.domain.com")).to eq(true)
  end

  it "retorna false para e-mails inválidos" do
    expect(EmailValidator::Validator.valid?("teste@com")).to eq(false)
    expect(EmailValidator::Validator.valid?("invalido@@email.com")).to eq(false)
    expect(EmailValidator::Validator.valid?("semarroba.com")).to eq(false)
    expect(EmailValidator::Validator.valid?("user@.com")).to eq(false)
    expect(EmailValidator::Validator.valid?(nil)).to eq(false)
  end
end