@extends('_layouts.master')
@section('content')
<!-- banner panel -->

<div style="text-align: center; padding: 50px; min-height: 500px;">
    <form action="/stripe-payment" method="POST">
        @csrf
        <script
            src="https://checkout.stripe.com/checkout.js" class="stripe-button"
            data-key="{{ config('services.stripe.key') }}"
            data-amount="5000"
            data-name="Test Payment"
            data-description="Laravel Stripe Payment"
            data-currency="INR"
            data-locale="auto">
        </script>
    </form>

</div>
@endsection