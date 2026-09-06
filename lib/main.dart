import 'package:flutter/material.dart';

void main() {
  runApp(const CidadaoSensorApp());
}

class CidadaoSensorApp extends StatelessWidget {
  const CidadaoSensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Cidadão Sensor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF121212),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const OnboardingLGPDPage(),
    );
  }
}

// 1. Tela de Onboarding e Consentimento LGPD
class OnboardingLGPDPage extends StatelessWidget {
  const OnboardingLGPDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projeto Cidadão Sensor - LGPD'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.security, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            const Text(
              'Compromisso com a sua Privacidade',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Em conformidade com a Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018), '
                  'o Projeto Cidadão Sensor coleta apenas os dados estritamente necessários para o '
                  'monitoramento de riscos climáticos, hidrológicos e gestão de avisos comunitários na bacia do Sarapuí e região de Mesquita/RJ.\n\n'
                  'Suas informações de relatórios e áudios são protegidas e utilizadas exclusivamente para fins de defesa civil preventiva e integração com programas socio-comunitários (Bolsa Família, Minha Casa Minha Vida, Periferia Viva, Cidade Resiliente, Programa Novo Nosso Lar e Mesquita do Amanhã).',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardPage()),
                );
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Concordar e Continuar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

// 2. Tela Principal
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [HomeTab(), CircuitoSocialTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidadão Sensor - Mesquita/RJ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.admin_panel_settings),
            tooltip: 'Painel do Administrador',
            onPressed: () => _mostrarDialogoPIN(context),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Monitoramento'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Circuito Social'),
        ],
      ),
    );
  }

  void _mostrarDialogoPIN(BuildContext context) {
    final pinController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Acesso Restrito - Administrador'),
        content: TextField(
          controller: pinController,
          obscureText: true,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: const InputDecoration(
            labelText: 'Digite o PIN de Segurança',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          ElevatedButton(
            onPressed: () {
              if (pinController.text == '123456') {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPanelPage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('PIN Incorreto!')));
              }
            },
            child: const Text('Entrar'),
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Status do Alerta Hidrológico', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                LinearProgressIndicator(value: 0.3, color: Colors.green),
                SizedBox(height: 10),
                Text('Nível da Bacia do Sarapuí: Estável (Normal)', style: TextStyle(color: Colors.green)),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text('Mapa de Risco e Sensores Comunitários', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Container(
          height: 220,
          decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.map, size: 50, color: Colors.blueGrey), SizedBox(height: 8), Text('Visualização do Mapa Georreferenciado')],
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Canal de Relato Rápido acionado.'))),
          icon: const Icon(Icons.mic),
          label: const Text('Enviar Relato de Ocorrência por Voz'),
        ),
      ],
    );
  }
}

class CircuitoSocialTab extends StatelessWidget {
  const CircuitoSocialTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        Text('Circuito Social - Eventos e Avisos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Card(child: ListTile(leading: Icon(Icons.video_library, color: Colors.blue), title: Text('Reunião Comunitária - Bacia do Sarapuí'), subtitle: Text('Atualizações sobre o programa Cidade Resiliente.'))),
        Card(child: ListTile(leading: Icon(Icons.video_library, color: Colors.blue), title: Text('Aviso Geral: Cadastramento Municipal'), subtitle: Text('Informações integradas sobre habitação e suporte.'))),
      ],
    );
  }
}

class AdminPanelPage extends StatelessWidget {
  const AdminPanelPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel de Gestão - Admin')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text('Controle Central do Sistema', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.upload_file), label: const Text('Gerenciar Alertas de Inundação')),
          const SizedBox(height: 10),
          ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.video_call), label: const Text('Atualizar Vídeos do Circuito Social')),
          const SizedBox(height: 10),
          ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, foregroundColor: Colors.white), onPressed: () {}, icon: const Icon(Icons.settings_backup_restore), label: const Text('Forçar Execução do monitor.py')),
        ],
      ),
    );
  }
}
