.class public Lcom/facebook/orca/emoji/EmojiAttachmentPopup;
.super Landroid/support/v4/app/DialogFragment;
.source "EmojiAttachmentPopup.java"


# instance fields
.field private Y:Landroid/view/View;

.field private Z:Landroid/widget/LinearLayout;

.field private aA:Z

.field private aB:Z

.field private aC:I

.field private aD:I

.field private aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

.field private aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Landroid/widget/FrameLayout;

.field private ae:Landroid/widget/FrameLayout;

.field private af:Landroid/widget/FrameLayout;

.field private ag:Landroid/widget/FrameLayout;

.field private ah:Landroid/support/v4/view/ViewPager;

.field private ai:Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;

.field private aj:Landroid/widget/LinearLayout;

.field private ak:Landroid/widget/LinearLayout;

.field private al:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/FrameLayout;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;>;"
        }
    .end annotation
.end field

.field private am:Landroid/widget/FrameLayout;

.field private an:Landroid/os/Vibrator;

.field private ao:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Landroid/widget/Button;

.field private aq:Landroid/widget/Button;

.field private ar:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

.field private as:Landroid/widget/ToggleButton;

.field private at:Landroid/widget/TextView;

.field private au:Lcom/facebook/orca/attachments/AudioRecorder;

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:I

.field private az:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 97
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->al:Ljava/util/Map;

    .line 826
    return-void
.end method

.method private E()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 296
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 297
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ar:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->az:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ay:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a(II)V

    .line 300
    const-string v2, "/messages/audio/auto_send_audio_recording"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aB:Z

    .line 301
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->as:Landroid/widget/ToggleButton;

    iget-boolean v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aB:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 302
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->as:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;

    invoke-direct {v3, p0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$5;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 313
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLongClickable(Z)V

    .line 314
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    new-instance v2, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$6;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 365
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$7;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$8;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aq:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$9;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-void
.end method

.method private F()Landroid/view/View;
    .locals 3

    .prologue
    .line 547
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aD:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 549
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    sget v0, Lcom/facebook/R$drawable;->orca_composer_divider_vertical:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 552
    return-object v1
.end method

.method private G()V
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->H()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->I()V

    goto :goto_0
.end method

.method private H()V
    .locals 4

    .prologue
    .line 565
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->b:Lcom/facebook/orca/emoji/EmojiSet;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v2}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;IIZ)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 569
    return-void
.end method

.method private I()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 573
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->a()I

    move-result v0

    .line 574
    sget-object v1, Lcom/facebook/orca/emoji/Emojis;->b:Lcom/facebook/orca/emoji/EmojiSet;

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;IIZ)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 576
    sget-object v2, Lcom/facebook/orca/emoji/Emojis;->b:Lcom/facebook/orca/emoji/EmojiSet;

    add-int/lit8 v3, v0, -0x2

    invoke-direct {p0, v2, v0, v3, v5}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;IIZ)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 578
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ae:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 579
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ad:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ab:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b(Landroid/view/View;)V

    .line 583
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 584
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    return-void
.end method

.method private J()Landroid/view/View;
    .locals 4

    .prologue
    .line 646
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/R$dimen;->divider_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/R$color;->emoji_attachment_popup_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    return-object v0
.end method

.method private K()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_front_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 798
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 800
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ar:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;->a()V

    .line 802
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->an:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 807
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->a()V

    .line 809
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/orca/emoji/EmojiSet;)I
    .locals 4
    .parameter

    .prologue
    .line 697
    invoke-virtual {p1}, Lcom/facebook/orca/emoji/EmojiSet;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v2}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->c()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private a(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;III)Landroid/widget/FrameLayout;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/widget/FrameLayout;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    sget v0, Lcom/facebook/R$layout;->orca_emoji_attachment_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 520
    sget v1, Lcom/facebook/R$id;->attachment_type_text:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 521
    invoke-virtual {p0, p3}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    sget v1, Lcom/facebook/R$id;->attachment_type_logo:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 523
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    packed-switch p5, :pswitch_data_0

    .line 543
    :goto_0
    return-object v0

    .line 527
    :pswitch_0
    new-instance v2, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;

    invoke-direct {v2, p0, p6}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$11;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 535
    :pswitch_1
    new-instance v2, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$12;

    invoke-direct {v2, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$12;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/facebook/orca/emoji/EmojiSet;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/widget/FrameLayout;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 776
    sget v0, Lcom/facebook/R$layout;->orca_emoji_popup_tab:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 778
    sget v1, Lcom/facebook/R$id;->tab_image:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 779
    invoke-virtual {p1}, Lcom/facebook/orca/emoji/EmojiSet;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 780
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/EmojiSet;I)Landroid/widget/LinearLayout;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;I)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/emoji/EmojiSet;I)Landroid/widget/LinearLayout;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 717
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 718
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 720
    invoke-virtual {p1}, Lcom/facebook/orca/emoji/EmojiSet;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 721
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->a()I

    move-result v5

    .line 722
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->b()I

    move-result v6

    move v0, v1

    move v2, p2

    .line 723
    :goto_0
    if-ge v0, v6, :cond_0

    if-ge v2, v4, :cond_0

    .line 724
    mul-int v2, v0, v5

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;IIZ)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 729
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 730
    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, v5

    add-int/2addr v2, p2

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    return-object v3
.end method

.method private a(Lcom/facebook/orca/emoji/EmojiSet;IIZ)Landroid/widget/LinearLayout;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 741
    invoke-virtual {p1}, Lcom/facebook/orca/emoji/EmojiSet;->b()Ljava/util/List;

    move-result-object v5

    .line 742
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int v1, p2, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 746
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->d()I

    move-result v7

    .line 747
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->f()I

    move-result v0

    move v1, v0

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->g()I

    move-result v8

    .line 749
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->k()I

    move-result v0

    move v2, v0

    .line 750
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->h()I

    move-result v9

    .line 751
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->l()I

    move-result v0

    move v3, v0

    .line 752
    :goto_2
    if-ge p2, v6, :cond_3

    .line 753
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 754
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 755
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    invoke-virtual {v10, v8, v2, v9, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 757
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 758
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/Emoji;

    .line 759
    invoke-virtual {v0}, Lcom/facebook/orca/emoji/Emoji;->b()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 760
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/facebook/R$drawable;->orca_emoji_background:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    new-instance v11, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;

    invoke-direct {v11, p0, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$14;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/Emoji;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->e()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->i()I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->j()I

    move-result v0

    move v3, v0

    goto :goto_2

    .line 769
    :cond_3
    return-object v4
.end method

.method public static a(IIIIZI)Lcom/facebook/orca/emoji/EmojiAttachmentPopup;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;

    invoke-direct {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;-><init>()V

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string v2, "x"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v2, "y"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v2, "gravity"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v2, "height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "width"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "showArrowAbove"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->f(Landroid/os/Bundle;)V

    .line 137
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->al:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 14
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 452
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/R$string;->photo_dialog_choose_photo:I

    sget v4, Lcom/facebook/R$drawable;->orca_composer_attach_photo_button:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 459
    iget-object v9, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    sget v10, Lcom/facebook/R$string;->photo_dialog_take_photo:I

    sget v11, Lcom/facebook/R$drawable;->orca_composer_attach_camera_button:I

    const/4 v13, 0x2

    move-object v7, p0

    move-object v8, p1

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 466
    iget-object v9, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    sget v10, Lcom/facebook/R$string;->photo_dialog_image_search:I

    sget v11, Lcom/facebook/R$drawable;->orca_composer_attach_search_button:I

    const/4 v13, 0x4

    move-object v7, p0

    move-object v8, p1

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 473
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->F()Landroid/view/View;

    move-result-object v3

    .line 474
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->F()Landroid/view/View;

    move-result-object v4

    .line 476
    iget-object v5, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 483
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ao:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    sget v4, Lcom/facebook/R$string;->photo_dialog_record_audio:I

    sget v5, Lcom/facebook/R$drawable;->orca_composer_attach_recorder_button:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;III)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 490
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->F()Landroid/view/View;

    move-result-object v1

    .line 491
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 494
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 641
    invoke-direct {p0, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b(Lcom/facebook/orca/emoji/EmojiSet;)Ljava/util/List;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->al:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->view_pager:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    .line 598
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 599
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->view_pager_indicator:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ai:Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;

    .line 600
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ai:Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 603
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 604
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    .line 605
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 606
    sget-object v0, Lcom/facebook/orca/emoji/Emojis;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiSet;

    .line 607
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/widget/FrameLayout;

    move-result-object v4

    .line 609
    new-instance v5, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$13;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/widget/FrameLayout;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->J()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 632
    if-nez v1, :cond_0

    .line 633
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 634
    iput-object v4, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->am:Landroid/widget/FrameLayout;

    .line 636
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 638
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/emoji/Emoji;)V
    .locals 3
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->an:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 786
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->a(Lcom/facebook/orca/emoji/Emoji;)V

    .line 788
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/widget/FrameLayout;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/widget/FrameLayout;Lcom/facebook/orca/emoji/EmojiSet;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Lcom/facebook/orca/emoji/Emoji;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/Emoji;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Lcom/facebook/orca/emoji/EmojiSet;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 668
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;->c()Ljava/util/List;

    move-result-object v4

    .line 670
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 671
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 677
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 679
    invoke-direct {p0, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;)I

    move-result v1

    move v0, v3

    .line 680
    :goto_1
    if-ge v0, v1, :cond_1

    .line 681
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 685
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 686
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 687
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 685
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 690
    :cond_2
    new-instance v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;

    invoke-direct {v0, p0, v4, p2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiPagerAdapter;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Ljava/util/List;Lcom/facebook/orca/emoji/EmojiSet;)V

    .line 691
    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 692
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ah:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 693
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ai:Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0}, Lcom/facebook/widget/viewpagerindicator/CirclePageIndicator;->a()V

    .line 694
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aB:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->f(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->am:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b(Lcom/facebook/orca/emoji/EmojiSet;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/emoji/EmojiSet;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 708
    invoke-direct {p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 709
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 710
    invoke-direct {p0, v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->f(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Lcom/facebook/orca/emoji/EmojiSet;I)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 711
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    :cond_0
    return-object v1
.end method

.method private b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 589
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 590
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v2}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->d()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 591
    iget-object v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v2}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 592
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 594
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->L()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aB:Z

    return v0
.end method

.method private f(I)I
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;->c()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method static synthetic f(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ar:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->at:Landroid/widget/TextView;

    return-object v0
.end method

.method private g(I)V
    .locals 1
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->a(I)V

    .line 794
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/attachments/AudioRecorder;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->au:Lcom/facebook/orca/attachments/AudioRecorder;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aA:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aw:I

    return v0
.end method

.method static synthetic l(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ay:I

    return v0
.end method

.method static synthetic m(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aC:I

    return v0
.end method

.method static synthetic n(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->K()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->an:Landroid/os/Vibrator;

    .line 183
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->b()Landroid/app/Dialog;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 186
    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 188
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 189
    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->av:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 190
    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aw:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 191
    const v3, 0x7fffffff

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 192
    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ax:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 196
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 197
    const/high16 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 199
    sget v0, Lcom/facebook/R$layout;->orca_emoji_popup:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_show_back:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ab:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_show_back_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ae:Landroid/widget/FrameLayout;

    .line 203
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_backspace:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ac:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_backspace_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ad:Landroid/widget/FrameLayout;

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_tabs_show_front_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->af:Landroid/widget/FrameLayout;

    .line 207
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_tabs_backspace_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ag:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_tabs:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_front_content:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ak:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_start_button:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ap:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_cancel_button:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aq:Landroid/widget/Button;

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_send_toggle_button:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->as:Landroid/widget/ToggleButton;

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_time_text:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->at:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->audio_record_volume_indicator:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ar:Lcom/facebook/orca/attachments/AudioRecordVolumeIndicatorView;

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->attachment_operation_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Z:Landroid/widget/LinearLayout;

    .line 221
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_popup_content_container:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 222
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    iget v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->az:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 225
    iget v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ay:I

    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aC:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-boolean v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aA:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_popup_arrow_above:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/view/LayoutInflater;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ab:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$1;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->af:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$2;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ac:Landroid/view/View;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$3;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ag:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$4;

    invoke-direct {v1, p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$4;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->E()V

    .line 281
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 282
    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->G()V

    .line 285
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->af:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->J()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 290
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aj:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ag:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->Y:Landroid/view/View;

    sget v1, Lcom/facebook/R$id;->emoji_popup_arrow_below:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->a(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->av:I

    .line 157
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aw:I

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gravity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ax:I

    .line 159
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ay:I

    .line 160
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->az:I

    .line 161
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showArrowAbove"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aA:Z

    .line 163
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->m()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    const/high16 v1, 0x4100

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aC:I

    .line 165
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/res/Resources;F)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aD:I

    .line 166
    new-instance v1, Lcom/facebook/orca/emoji/EmojiSizingCalculator;

    invoke-direct {v1, v0}, Lcom/facebook/orca/emoji/EmojiSizingCalculator;-><init>(Landroid/content/res/Resources;)V

    iget v2, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->az:I

    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ay:I

    sget v4, Lcom/facebook/R$dimen;->emoji_category_height_dp:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, v3, v0

    iget v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aC:I

    sub-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aA:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/orca/emoji/EmojiSizingCalculator;->a(IIZ)Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aE:Lcom/facebook/orca/emoji/EmojiSizingCalculator$Sizes;

    .line 172
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Lcom/facebook/orca/annotations/IsAudioMessageEnabled;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/inject/FbInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->ao:Ljavax/inject/Provider;

    .line 174
    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AudioRecorder;

    iput-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->au:Lcom/facebook/orca/attachments/AudioRecorder;

    .line 175
    return-void
.end method

.method public a(Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    .line 147
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 404
    new-instance v0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->c()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$10;-><init>(Lcom/facebook/orca/emoji/EmojiAttachmentPopup;Landroid/content/Context;I)V

    .line 444
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 813
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 814
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->au:Lcom/facebook/orca/attachments/AudioRecorder;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/AudioRecorder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->au:Lcom/facebook/orca/attachments/AudioRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AudioRecorder;->a(Z)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/facebook/orca/emoji/EmojiAttachmentPopup;->aa:Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;

    invoke-virtual {v0}, Lcom/facebook/orca/emoji/EmojiAttachmentPopup$EmojiAttachmentPopupListener;->b()V

    .line 820
    :cond_1
    return-void
.end method
