.class public Lcom/facebook/app/ApplicationLike;
.super Ljava/lang/Object;
.source "ApplicationLike.java"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/app/ApplicationLike;->a:Landroid/app/Application;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/app/ApplicationLike;->a:Landroid/app/Application;

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
