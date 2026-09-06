import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MonitorHomePage(),
    );
  }
}

class MonitorHomePage extends StatefulWidget {
  const MonitorHomePage({super.key});

  @override
  State<MonitorHomePage> createState() => _MonitorHomePageState();
}

class _MonitorHomePageState extends State<MonitorHomePage> {
  Map<String, dynamic>? statusData;
  bool isLoading = true;
  String errorMessage = '';

  // Substitua pelo link raw correto do seu repositório do GitHub
  final String jsonUrl = 'https://raw.githubusercontent.com/phantrorfirmo08/PROJETO-CIDAD-O-SENSOR-/main/status_monitoramento.json';

  @override
  void initState() {
    super.initState();
    fetchStatusData();
  }

  Future<void> fetchStatusData() async {
    try {
      final response = await http.get(Uri.parse(jsonUrl));
      if (response.statusCode == 200) {
        setState(() {
          statusData = json.decode(utf8.decode(response.bodyBytes));
          isLoading = false;
        });
      } else {
        setState(() {
          errorMessage = 'Erro ao carregar dados (${response.statusCode})';
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Erro de conexão: $e';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidadão Sensor - Sarapuí'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : errorMessage.isNotEmpty
                ? Center(
                    child: Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  )
                : ListView(
                    children: [
                      const Text(
                        'Monitoramento de Risco - Mesquita, RJ',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Comunidade do Sebinho & Rua Amazonas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              const Divider(),
                              const SizedBox(height: 8),
                              Text('Status: ${statusData?['status'] ?? 'Aguardando dados...'}'),
                              const SizedBox(height: 6),
                              Text('Nível do Rio Sarapuí: ${statusData?['nivel_sarapui'] ?? 'Normal'}'),
                              const SizedBox(height: 6),
                              Text('Última Atualização: ${statusData?['timestamp'] ?? 'Não informada'}'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                            errorMessage = '';
                          });
                          fetchStatusData();
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Atualizar Dados'),
                      ),
                    ],
                  ),
      ),
    );
  }
}
