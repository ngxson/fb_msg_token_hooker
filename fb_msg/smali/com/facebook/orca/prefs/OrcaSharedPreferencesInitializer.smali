.class public Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;
.super Ljava/lang/Object;
.source "OrcaSharedPreferencesInitializer.java"

# interfaces
.implements Lcom/facebook/orca/app/INeedInit;


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    .line 17
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferencesInitializer;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferencesImpl;->c()V

    .line 23
    return-void
.end method
