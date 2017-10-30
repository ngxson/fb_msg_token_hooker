.class public abstract Lcom/facebook/orca/activity/FbMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "FbMapActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/FbActivityish;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 122
    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 227
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->finish()V

    .line 172
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 173
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->i(Landroid/app/Activity;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 211
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->l(Landroid/app/Activity;)Z

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 223
    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onContentChanged()V

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 181
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->j(Landroid/app/Activity;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbMapActivity;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/facebook/orca/activity/FbMapActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/FbMapActivity$1;-><init>(Lcom/facebook/orca/activity/FbMapActivity;)V

    invoke-static {v1}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->a(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 34
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->d(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbMapActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->b(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 42
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 188
    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 99
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->h(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 150
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 161
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->b(Landroid/app/Activity;ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 80
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 56
    invoke-interface {v0, p0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 200
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;ILandroid/app/Dialog;)Z

    move-result v0

    .line 201
    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/facebook/orca/activity/FbActivityUtils;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 91
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 139
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->k(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 64
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->f(Landroid/app/Activity;)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 72
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->g(Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onUserInteraction()V

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 110
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
