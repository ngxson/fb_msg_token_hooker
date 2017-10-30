.class Lcom/facebook/orca/app/MessengerApplicationImpl$1;
.super Ljava/lang/Object;
.source "MessengerApplicationImpl.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessengerApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/MessengerApplicationImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/app/MessengerApplicationImpl$1;->a:Lcom/facebook/orca/app/MessengerApplicationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method
