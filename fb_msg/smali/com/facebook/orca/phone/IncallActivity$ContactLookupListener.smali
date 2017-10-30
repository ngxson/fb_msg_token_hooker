.class Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;
.super Ljava/lang/Object;
.source "IncallActivity.java"

# interfaces
.implements Lcom/facebook/orca/phone/ContactLookupTask$ContactLookupTaskListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/phone/IncallActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;->a:Lcom/facebook/orca/phone/IncallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/phone/IncallActivity;Lcom/facebook/orca/phone/IncallActivity$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;->a:Lcom/facebook/orca/phone/IncallActivity;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener$2;

    invoke-direct {v1, p0, p2}, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener$2;-><init>(Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/phone/IncallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;->a:Lcom/facebook/orca/phone/IncallActivity;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener$1;-><init>(Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/phone/IncallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method
