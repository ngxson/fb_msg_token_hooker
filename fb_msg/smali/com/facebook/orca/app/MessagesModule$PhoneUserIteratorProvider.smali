.class Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/users/PhoneUserIterator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;Lcom/facebook/orca/app/MessagesModule$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1887
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/PhoneUserIterator;
    .locals 3

    .prologue
    .line 1891
    new-instance v1, Lcom/facebook/orca/users/PhoneUserIterator;

    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v0}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-class v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/users/PhoneUserIterator;-><init>(Landroid/content/ContentResolver;Lcom/facebook/orca/common/util/OrcaPhoneNumberUtil;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;->a()Lcom/facebook/orca/users/PhoneUserIterator;

    move-result-object v0

    return-object v0
.end method
