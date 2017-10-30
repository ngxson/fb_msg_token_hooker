.class public Lcom/facebook/orca/compose/LocationNuxController;
.super Ljava/lang/Object;
.source "LocationNuxController.java"


# instance fields
.field private final a:Lcom/facebook/orca/prefs/UiCounters;

.field private b:Lcom/facebook/orca/compose/LocationNuxView;

.field private c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

.field private d:Lcom/facebook/orca/prefs/UiCounters$Listener;

.field private e:Lcom/facebook/orca/compose/LocationNuxController$State;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/facebook/orca/compose/ComposeMode;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/prefs/UiCounters;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 31
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxController;)Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/compose/LocationNuxController$State;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne p1, v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/LocationNuxView;->a(Z)V

    .line 107
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_4

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/LocationNuxView;->a(Z)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/compose/LocationDisabledNuxView;->a(Z)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/compose/LocationDisabledNuxView;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxController;Lcom/facebook/orca/compose/LocationNuxController$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->i:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->h:Z

    if-nez v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 82
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked_with_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "enabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "disabled_shared_location_in_message"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 79
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->e:Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked_with_location_disabled_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->i:Lcom/facebook/orca/compose/ComposeMode;

    .line 87
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    .line 88
    return-void
.end method

.method public a(Lcom/facebook/orca/compose/LocationNuxView;Lcom/facebook/orca/compose/LocationDisabledNuxView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->b:Lcom/facebook/orca/compose/LocationNuxView;

    .line 42
    iput-object p2, p0, Lcom/facebook/orca/compose/LocationNuxController;->c:Lcom/facebook/orca/compose/LocationDisabledNuxView;

    .line 44
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/LocationNuxController$1;-><init>(Lcom/facebook/orca/compose/LocationNuxController;)V

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->d:Lcom/facebook/orca/prefs/UiCounters$Listener;

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxController;->a:Lcom/facebook/orca/prefs/UiCounters;

    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxController;->d:Lcom/facebook/orca/prefs/UiCounters$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Lcom/facebook/orca/prefs/UiCounters$Listener;)V

    .line 51
    return-void
.end method

.method public a(ZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/facebook/orca/compose/LocationNuxController;->f:Z

    .line 58
    iput-boolean p2, p0, Lcom/facebook/orca/compose/LocationNuxController;->g:Z

    .line 59
    iput-boolean p3, p0, Lcom/facebook/orca/compose/LocationNuxController;->h:Z

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxController;->b()Lcom/facebook/orca/compose/LocationNuxController$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/compose/LocationNuxController;->a(Lcom/facebook/orca/compose/LocationNuxController$State;)V

    .line 61
    return-void
.end method
