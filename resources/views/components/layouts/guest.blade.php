<!DOCTYPE html>
<html lang="en">
<head>
	<x-layouts.head />
</head>
<body class="antialiased">
@include('partials.shared._header')

<main>
	{{ $slot }}
</main>

@include('partials.shared.footer')

@livewireScripts
@vite('resources/js/app.js')
@stack('scripts')
</body>
</html>
