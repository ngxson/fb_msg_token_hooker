.class public Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
.super Ljava/lang/Object;
.source "ErrorDialogBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

.field private final c:Lcom/facebook/orca/analytics/AnalyticsLogger;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/orca/ops/ServiceException;

.field private f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/app/Activity;

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/app/IntendedAudience;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsLogger;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/app/IntendedAudience;",
            ">;",
            "Lcom/facebook/orca/analytics/AnalyticsLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    .line 50
    iput-object p3, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->h:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 5
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    const-class v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    const-class v3, Lcom/facebook/orca/app/IntendedAudience;

    invoke-virtual {v1, v3}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v3

    const-class v4, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;Ljavax/inject/Provider;Lcom/facebook/orca/analytics/AnalyticsLogger;)V

    return-object v2
.end method

.method static synthetic b(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)Lcom/facebook/orca/ops/ServiceException;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->b:Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;->a(Lcom/facebook/orca/ops/ServiceException;Z)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    .line 89
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/R$string;->generic_error_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    if-nez v1, :cond_2

    .line 95
    new-instance v1, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$1;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 106
    :cond_2
    new-instance v2, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;

    invoke-direct {v2, p0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder$2;-><init>(Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;)V

    .line 118
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v4, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v5, Lcom/facebook/R$string;->app_error_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v4, Lcom/facebook/R$string;->dialog_ok:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/app/IntendedAudience;->PUBLIC:Lcom/facebook/orca/app/IntendedAudience;

    if-eq v0, v1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    sget v1, Lcom/facebook/R$string;->report_error_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->c:Lcom/facebook/orca/analytics/AnalyticsLogger;

    const-string v1, "error_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 133
    return-object v0

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public a(Landroid/app/Activity;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->g:Landroid/app/Activity;

    .line 76
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    return-object p0
.end method

.method public a(Lcom/facebook/orca/ops/ServiceException;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->e:Lcom/facebook/orca/ops/ServiceException;

    .line 66
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->d:Ljava/lang/String;

    .line 56
    return-object p0
.end method
