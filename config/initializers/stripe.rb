Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_51LAWD9GYGrgSTlH5TzgrC0Kpp1VK9SLIuMpyGsvtlPWv11fb6fGtgDsscOEjNQILvgdjV80tywqEn2owcryREOW800yLkxiuKr'],
  secret_key:      ENV['sk_test_51LAWD9GYGrgSTlH5ikOqqLVzHVC518Hbc6oOpZzZyFakECx1DPIiu3XpaC9py8lssiwolz6udKGruUVAprd4TPND00qzyCiiaQ']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
