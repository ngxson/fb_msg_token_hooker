.class Lcom/facebook/widget/listeners/BetterViewListener$1;
.super Ljava/lang/Object;
.source "BetterViewListener.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/facebook/widget/listeners/BetterViewListener;


# direct methods
.method constructor <init>(Lcom/facebook/widget/listeners/BetterViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/widget/listeners/BetterViewListener$1;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/widget/listeners/BetterViewListener$1;->a:Lcom/facebook/widget/listeners/BetterViewListener;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/widget/listeners/BetterViewListener;->a(Lcom/facebook/widget/listeners/BetterViewListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method
