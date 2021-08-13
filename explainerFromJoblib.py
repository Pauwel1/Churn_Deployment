from explainerdashboard import ClassifierExplainer

explainer = ClassifierExplainer.from_file('explainer.joblib')
explainer.run(host = "0.0.0.0", port = 9050, use_waitress = True)