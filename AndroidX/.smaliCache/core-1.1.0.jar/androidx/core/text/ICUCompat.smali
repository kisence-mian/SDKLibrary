.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "addLikelySubtags"

    const-string v2, "libcore.icu.ICU"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-ge v0, v5, :cond_39

    .line 38
    :try_start_c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_38

    .line 40
    const-string v2, "getScript"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 42
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    goto :goto_38

    .line 45
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2d
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 47
    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 50
    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    goto :goto_57

    .line 52
    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v0, v5, :cond_57

    .line 55
    :try_start_3f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4f} :catch_50

    .line 60
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_57

    .line 58
    :catch_50
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 129
    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "localeStr":Ljava/lang/String;
    :try_start_6
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_21

    .line 132
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 133
    .local v3, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_17} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_17} :catch_18

    return-object v2

    .line 138
    .end local v3    # "args":[Ljava/lang/Object;
    :catch_18
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 135
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1d
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_21
    nop

    .line 143
    :goto_22
    return-object v1
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 114
    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1d

    .line 115
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 116
    .local v3, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_13} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_13} :catch_14

    return-object v2

    .line 121
    .end local v3    # "args":[Ljava/lang/Object;
    :catch_14
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 118
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_19
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1d
    nop

    .line 125
    :goto_1e
    return-object v1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 89
    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_15

    .line 90
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 91
    .local v0, "uLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    .end local v0    # "uLocale":Landroid/icu/util/ULocale;
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3e

    .line 94
    const/4 v1, 0x1

    :try_start_1d
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 95
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2e} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object v0

    .line 98
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_2f
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_34
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 101
    :goto_39
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_3e
    invoke-static {p0}, Landroidx/core/text/ICUCompat;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_49

    .line 105
    invoke-static {v0}, Landroidx/core/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 108
    :cond_49
    return-object v3
.end method
