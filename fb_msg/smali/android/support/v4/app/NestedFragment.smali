.class public Landroid/support/v4/app/NestedFragment;
.super Landroid/support/v4/app/Fragment;
.source "NestedFragment.java"


# instance fields
.field private a:Landroid/support/v4/app/FragmentManagerImpl;

.field private b:Landroid/support/v4/app/NestedFragmentLayoutInflator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->C()V

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->r()V

    .line 144
    return-void
.end method

.method public a()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/NestedFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/NestedFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "android:support:nestedfragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 96
    iget-object v1, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->l()V

    .line 100
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)V

    .line 193
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;)Z

    .line 194
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 119
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/NestedFragment;->l()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NestedFragment;->p:I

    .line 43
    iget v0, p0, Landroid/support/v4/app/NestedFragment;->p:I

    return v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->b:Landroid/support/v4/app/NestedFragmentLayoutInflator;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/support/v4/app/NestedFragmentLayoutInflator;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v4/app/NestedFragmentLayoutInflator;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/NestedFragment;)V

    iput-object v0, p0, Landroid/support/v4/app/NestedFragment;->b:Landroid/support/v4/app/NestedFragmentLayoutInflator;

    .line 37
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->b:Landroid/support/v4/app/NestedFragmentLayoutInflator;

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/Menu;)V

    .line 166
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public d(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->m()V

    .line 111
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 216
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->k()V

    .line 217
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 218
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->n()V

    .line 219
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 203
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->j()Landroid/os/Parcelable;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const-string v1, "android:support:nestedfragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 227
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->q()V

    .line 228
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/res/Configuration;)V

    .line 80
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->t()V

    .line 138
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    .line 184
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->o()V

    .line 185
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->p()V

    .line 175
    return-void
.end method

.method public x()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/NestedFragment;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->s()V

    .line 129
    return-void
.end method
