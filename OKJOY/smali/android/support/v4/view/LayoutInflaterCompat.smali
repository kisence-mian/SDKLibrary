.class public final Landroid/support/v4/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    const/4 v4, 0x1

    .line 71
    sget-boolean v1, Landroid/support/v4/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v1, :cond_17

    .line 73
    :try_start_5
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "mFactory2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 74
    sget-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_21

    .line 80
    :goto_15
    sput-boolean v4, Landroid/support/v4/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 82
    :cond_17
    sget-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_20

    .line 84
    :try_start_1b
    sget-object v1, Landroid/support/v4/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_20} :catch_47

    .line 90
    :cond_20
    :goto_20
    return-void

    .line 75
    :catch_21
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "LayoutInflaterCompatHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 85
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_47
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "LayoutInflaterCompatHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 170
    .local v0, "factory":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_d

    .line 171
    check-cast v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    .end local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    iget-object v1, v0, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;

    .line 173
    :goto_c
    return-object v1

    .restart local v0    # "factory":Landroid/view/LayoutInflater$Factory;
    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_12

    .line 112
    if-eqz p1, :cond_e

    new-instance v2, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v2, p1}, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    :cond_e
    invoke-virtual {p0, v2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 128
    :goto_11
    return-void

    .line 114
    :cond_12
    if-eqz p1, :cond_2a

    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v1, p1}, Landroid/support/v4/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 116
    .local v1, "factory2":Landroid/view/LayoutInflater$Factory2;
    :goto_19
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 118
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 119
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_2c

    .line 122
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_11

    .end local v1    # "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_2a
    move-object v1, v2

    .line 114
    goto :goto_19

    .line 125
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    .restart local v1    # "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_2c
    invoke-static {p0, v1}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_11
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_16

    .line 142
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 143
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_17

    .line 146
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 152
    :cond_16
    :goto_16
    return-void

    .line 149
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_17
    invoke-static {p0, p1}, Landroid/support/v4/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_16
.end method
