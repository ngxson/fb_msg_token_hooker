.class public interface abstract Lcom/facebook/orca/prefs/OrcaSharedPreferences;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"


# virtual methods
.method public abstract a(Lcom/facebook/orca/prefs/PrefKey;I)I
.end method

.method public abstract a(Lcom/facebook/orca/prefs/PrefKey;J)J
.end method

.method public abstract a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Lcom/facebook/orca/prefs/PrefKey;Z)Z
.end method

.method public abstract b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;
.end method

.method public abstract b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
