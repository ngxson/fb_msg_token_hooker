.class Lcom/facebook/orca/notify/OrcaNotificationManager$2;
.super Ljava/lang/Object;
.source "OrcaNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/orca/notify/OrcaNotificationManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/notify/OrcaNotificationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    iput-object p2, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->b:Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-static {v0}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Lcom/facebook/orca/notify/OrcaNotificationManager;)Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/notify/OrcaNotificationManager$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/orca/notify/MessagingNotificationRenderer;->a(Ljava/lang/String;)Z

    .line 120
    return-void
.end method
