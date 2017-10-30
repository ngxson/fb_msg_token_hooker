.class final Landroid_src/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid_src/mms/transaction/MessagingNotification$1;->a:Landroid/content/Context;

    iput-boolean p2, p0, Landroid_src/mms/transaction/MessagingNotification$1;->b:Z

    iput-boolean p3, p0, Landroid_src/mms/transaction/MessagingNotification$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Landroid_src/mms/transaction/MessagingNotification$1;->a:Landroid/content/Context;

    iget-boolean v1, p0, Landroid_src/mms/transaction/MessagingNotification$1;->b:Z

    iget-boolean v2, p0, Landroid_src/mms/transaction/MessagingNotification$1;->c:Z

    invoke-static {v0, v1, v2}, Landroid_src/mms/transaction/MessagingNotification;->b(Landroid/content/Context;ZZ)V

    .line 140
    return-void
.end method
