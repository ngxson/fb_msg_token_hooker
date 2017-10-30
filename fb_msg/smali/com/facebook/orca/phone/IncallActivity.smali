.class public Lcom/facebook/orca/phone/IncallActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "IncallActivity.java"


# static fields
.field private static final n:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final o:I


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/ImageButton;

.field private E:Landroid/widget/ImageButton;

.field private p:Landroid/media/AudioManager;

.field private q:Landroid/telephony/TelephonyManager;

.field private r:Lcom/facebook/orca/phone/TelephonyServiceBridge;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/orca/phone/IncallActivity;

    sput-object v0, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    .line 34
    sget v0, Lcom/facebook/R$drawable;->orca_phone_toggle_active_background:I

    sput v0, Lcom/facebook/orca/phone/IncallActivity;->o:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 95
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/phone/IncallActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/phone/IncallActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/phone/IncallActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/phone/IncallActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->n()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->o()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->p()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->q()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/orca/phone/IncallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->r()V

    return-void
.end method

.method static synthetic h()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->q:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->j()V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    const v1, 0x106000d

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/orca/phone/IncallActivity;->o:I

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/phone/IncallActivity;->D:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/facebook/orca/phone/IncallActivity;->o:I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 229
    return-void

    :cond_1
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/facebook/orca/phone/IncallActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lcom/facebook/orca/phone/ContactLookupTask;

    iget-object v2, p0, Lcom/facebook/orca/phone/IncallActivity;->t:Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;

    invoke-direct {v1, p0, v0, v2}, Lcom/facebook/orca/phone/ContactLookupTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/orca/phone/ContactLookupTask$ContactLookupTaskListener;)V

    .line 247
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->r:Lcom/facebook/orca/phone/TelephonyServiceBridge;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/phone/TelephonyServiceBridge;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->k()V

    .line 276
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    const-string v2, "Error answering call"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->r:Lcom/facebook/orca/phone/TelephonyServiceBridge;

    invoke-virtual {v0}, Lcom/facebook/orca/phone/TelephonyServiceBridge;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->k()V

    .line 288
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 284
    sget-object v1, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    const-string v2, "Error ignoring call"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->r:Lcom/facebook/orca/phone/TelephonyServiceBridge;

    invoke-virtual {v0}, Lcom/facebook/orca/phone/TelephonyServiceBridge;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->k()V

    .line 300
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 296
    sget-object v1, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    const-string v2, "Error ending call"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 308
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->j()V

    .line 309
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 317
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->j()V

    .line 318
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->requestWindowFeature(I)Z

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 129
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 131
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->p:Landroid/media/AudioManager;

    .line 134
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->q:Landroid/telephony/TelephonyManager;

    .line 135
    new-instance v0, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/facebook/orca/phone/IncallActivity$IncallBroadcastReceiver;-><init>(Lcom/facebook/orca/phone/IncallActivity;Lcom/facebook/orca/phone/IncallActivity$1;)V

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->s:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/facebook/orca/phone/IncallActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/phone/IncallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    :try_start_0
    new-instance v0, Lcom/facebook/orca/phone/TelephonyServiceBridge;

    iget-object v1, p0, Lcom/facebook/orca/phone/IncallActivity;->q:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1}, Lcom/facebook/orca/phone/TelephonyServiceBridge;-><init>(Landroid/telephony/TelephonyManager;)V

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->r:Lcom/facebook/orca/phone/TelephonyServiceBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    new-instance v0, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;

    invoke-direct {v0, p0, v3}, Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;-><init>(Lcom/facebook/orca/phone/IncallActivity;Lcom/facebook/orca/phone/IncallActivity$1;)V

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->t:Lcom/facebook/orca/phone/IncallActivity$ContactLookupListener;

    .line 150
    sget v0, Lcom/facebook/R$layout;->orca_phone_incall:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->setContentView(I)V

    .line 151
    sget v0, Lcom/facebook/R$id;->incoming_call_buttons:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->u:Landroid/view/View;

    .line 152
    sget v0, Lcom/facebook/R$id;->incall_buttons:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->v:Landroid/view/View;

    .line 153
    sget v0, Lcom/facebook/R$id;->contact_photo:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->w:Landroid/widget/ImageView;

    .line 154
    sget v0, Lcom/facebook/R$id;->call_status_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->x:Landroid/widget/ImageView;

    .line 155
    sget v0, Lcom/facebook/R$id;->contact_display_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->y:Landroid/widget/TextView;

    .line 156
    sget v0, Lcom/facebook/R$id;->call_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->z:Landroid/widget/TextView;

    .line 157
    sget v0, Lcom/facebook/R$id;->answer_call_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->A:Landroid/widget/Button;

    .line 158
    sget v0, Lcom/facebook/R$id;->ignore_call_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->B:Landroid/widget/Button;

    .line 159
    sget v0, Lcom/facebook/R$id;->end_call_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->C:Landroid/widget/Button;

    .line 160
    sget v0, Lcom/facebook/R$id;->incall_button_speaker:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->D:Landroid/widget/ImageButton;

    .line 161
    sget v0, Lcom/facebook/R$id;->incall_button_mute:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->E:Landroid/widget/ImageButton;

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->A:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/phone/IncallActivity$1;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->B:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/phone/IncallActivity$2;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/phone/IncallActivity$3;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->D:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/phone/IncallActivity$4;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->E:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/phone/IncallActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/orca/phone/IncallActivity$5;-><init>(Lcom/facebook/orca/phone/IncallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->i()V

    .line 195
    invoke-direct {p0}, Lcom/facebook/orca/phone/IncallActivity;->m()V

    .line 196
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/facebook/orca/phone/IncallActivity;->n:Ljava/lang/Class;

    const-string v2, "Couldn\'t get reference to telephony service"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0}, Lcom/facebook/orca/phone/IncallActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->onDestroy()V

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/phone/IncallActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/phone/IncallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method
