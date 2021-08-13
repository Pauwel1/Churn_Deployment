from explainerdashboard import ClassifierExplainer
from joblib import load


db = ClassifierExplainer.from_file("explainer.joblib")
db.run(host = "0.0.0.0", port = 9050, use_waitress = True)