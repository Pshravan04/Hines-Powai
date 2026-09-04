import re

files = ['privacy.html', 'terms.html']

for f in files:
    with open(f, 'r', encoding='utf-8') as file:
        content = file.read()
    
    # Titles and names
    content = content.replace('Rustomjee Ozone (New Phase)', 'Rustomjee OZONE SKYE')
    content = content.replace('Rustomjee Ozone Rainforest Kanjur - Bhandup*', 'Rustomjee OZONE SKYE Goregaon West')
    content = content.replace('Rustomjee Ozone Rainforest', 'Rustomjee OZONE SKYE')
    content = content.replace('Rustomjee Ozone Lifespaces', 'Rustomjee Developers')
    
    # Colors
    content = content.replace('bg-[#E61937]', 'bg-[#FAF3E0]')
    content = content.replace('text-[#E61937]', 'text-[#100906]')
    content = content.replace('bg-red-100', 'bg-[#FAF3E0]')
    
    # Header link text color
    content = content.replace('text-white font-semibold hover:underline', 'text-[#100906] font-semibold hover:underline')
    
    # Footer
    content = content.replace('<footer class="bg-gray-900 text-white py-8">', '<footer class="bg-[#FAF3E0] text-black py-8">')
    content = content.replace('Ac 2025', '&copy; 2026')
    content = content.replace('text-gray-400', 'text-gray-600')
    
    # Tailwind config script inject
    tailwind_script = '''<script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    navy: {
                        DEFAULT: '#100906',
                    },
                    accent: '#100906',
                }
            }
        }
    }
  </script>
</head>'''
    content = content.replace('</head>', tailwind_script)

    with open(f, 'w', encoding='utf-8') as file:
        file.write(content)

print('Updated privacy and terms pages.')
