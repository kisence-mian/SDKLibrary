.class public Landroid/support/v4/graphics/TypefaceCompatApi26Impl;
.super Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.source "TypefaceCompatApi26Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"


# instance fields
.field protected final mAbortCreation:Ljava/lang/reflect/Method;

.field protected final mAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field protected final mAddFontFromBuffer:Ljava/lang/reflect/Method;

.field protected final mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field protected final mFontFamily:Ljava/lang/Class;

.field protected final mFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field protected final mFreeze:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 12

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    .line 84
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFontFamily()Ljava/lang/Class;

    move-result-object v5

    .line 85
    .local v5, "fontFamily":Ljava/lang/Class;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 86
    .local v6, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 87
    .local v1, "addFontFromAssetManager":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 88
    .local v2, "addFontFromBuffer":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 89
    .local v7, "freeze":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    .local v0, "abortCreation":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_1e} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1e} :catch_57

    move-result-object v3

    .line 102
    .local v3, "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    :goto_1f
    iput-object v5, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    .line 103
    iput-object v6, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 104
    iput-object v1, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    .line 105
    iput-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    .line 106
    iput-object v7, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    .line 107
    iput-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    .line 108
    iput-object v3, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 109
    return-void

    .line 91
    .end local v0    # "abortCreation":Ljava/lang/reflect/Method;
    .end local v1    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    .end local v2    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    .end local v5    # "fontFamily":Ljava/lang/Class;
    .end local v6    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v7    # "freeze":Ljava/lang/reflect/Method;
    :catch_2e
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2f
    const-string v8, "TypefaceCompatApi26Impl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to collect necessary methods for class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v5, 0x0

    .line 95
    .restart local v5    # "fontFamily":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 96
    .restart local v6    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    .line 97
    .restart local v1    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 98
    .restart local v2    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 99
    .restart local v7    # "freeze":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 100
    .restart local v0    # "abortCreation":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .restart local v3    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    goto :goto_1f

    .line 91
    .end local v0    # "abortCreation":Ljava/lang/reflect/Method;
    .end local v1    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    .end local v2    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v5    # "fontFamily":Ljava/lang/Class;
    .end local v6    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v7    # "freeze":Ljava/lang/reflect/Method;
    :catch_57
    move-exception v4

    goto :goto_2f
.end method

.method private abortCreation(Ljava/lang/Object;)V
    .registers 5
    .param p1, "family"    # Ljava/lang/Object;

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_10

    .line 200
    return-void

    .line 197
    :catch_9
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_a
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_10
    move-exception v0

    goto :goto_a
.end method

.method private addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "family"    # Ljava/lang/Object;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "ttcIndex"    # I
    .param p5, "weight"    # I
    .param p6, "style"    # I
    .param p7, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 142
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p7, v3, v4

    .line 140
    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 143
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_41} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_41} :catch_4a

    move-result v2

    return v2

    .line 144
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_43
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_44
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 144
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_4a
    move-exception v0

    goto :goto_44
.end method

.method private addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 12
    .param p1, "family"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "ttcIndex"    # I
    .param p4, "weight"    # I
    .param p5, "style"    # I

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 157
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 156
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 158
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_33

    move-result v2

    return v2

    .line 159
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_2c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2d
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 159
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_33
    move-exception v0

    goto :goto_2d
.end method

.method private freeze(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "family"    # Ljava/lang/Object;

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 185
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_17

    move-result v2

    return v2

    .line 186
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_10
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_11
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 186
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_17
    move-exception v0

    goto :goto_11
.end method

.method private isFontFamilyPrivateAPIAvailable()Z
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v0, :cond_b

    .line 116
    const-string v0, "TypefaceCompatApi26Impl"

    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_b
    iget-object v0, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private newFamily()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_8} :catch_13

    move-result-object v1

    return-object v1

    .line 128
    :catch_a
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_11
    move-exception v0

    goto :goto_b

    :catch_13
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 9
    .param p1, "family"    # Ljava/lang/Object;

    .prologue
    .line 170
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "familyArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 172
    iget-object v2, p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 173
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 172
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_32

    return-object v2

    .line 174
    .end local v1    # "familyArray":Ljava/lang/Object;
    :catch_2b
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 174
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_32
    move-exception v0

    goto :goto_2c
.end method

.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 207
    invoke-super/range {p0 .. p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 221
    :goto_a
    return-object v0

    .line 209
    :cond_b
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "fontFamily":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v10

    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_16
    if-ge v9, v11, :cond_48

    aget-object v8, v10, v9

    .line 211
    .local v8, "fontFile":Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    invoke-virtual {v8}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v8}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v4

    invoke-virtual {v8}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v5

    invoke-virtual {v8}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v6, 0x1

    .line 213
    :goto_2d
    invoke-virtual {v8}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    .line 211
    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 214
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_a

    .line 212
    :cond_42
    const/4 v6, 0x0

    goto :goto_2d

    .line 210
    :cond_44
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_16

    .line 218
    .end local v8    # "fontFile":Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :cond_48
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 219
    const/4 v0, 0x0

    goto :goto_a

    .line 221
    :cond_50
    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_a
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .prologue
    .line 228
    move-object/from16 v0, p3

    array-length v3, v0

    const/4 v6, 0x1

    if-ge v3, v6, :cond_8

    .line 229
    const/4 v3, 0x0

    .line 274
    :cond_7
    :goto_7
    return-object v3

    .line 231
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v3

    if-nez v3, :cond_87

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v10

    .line 235
    .local v10, "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 237
    .local v14, "resolver":Landroid/content/ContentResolver;
    :try_start_1c
    invoke-virtual {v10}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v6, "r"

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v6, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_39

    move-result-object v13

    .line 236
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 238
    if-nez v13, :cond_40

    .line 239
    const/4 v3, 0x0

    .line 245
    if-eqz v13, :cond_7

    if-eqz v6, :cond_3c

    :try_start_30
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_39

    goto :goto_7

    :catch_34
    move-exception v7

    :try_start_35
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_39
    move-exception v11

    .line 246
    .local v11, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_7

    .line 245
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3c
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_39

    goto :goto_7

    .line 241
    :cond_40
    :try_start_40
    new-instance v3, Landroid/graphics/Typeface$Builder;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 242
    invoke-virtual {v10}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v3

    .line 243
    invoke-virtual {v10}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_5c} :catch_6e
    .catchall {:try_start_40 .. :try_end_5c} :catchall_101

    move-result-object v3

    .line 245
    if-eqz v13, :cond_7

    if-eqz v6, :cond_6a

    :try_start_61
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_39

    goto :goto_7

    :catch_65
    move-exception v7

    :try_start_66
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6a
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6d} :catch_39

    goto :goto_7

    .line 236
    :catch_6e
    move-exception v3

    :try_start_6f
    throw v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 245
    :catchall_70
    move-exception v6

    move-object/from16 v20, v6

    move-object v6, v3

    move-object/from16 v3, v20

    :goto_76
    if-eqz v13, :cond_7d

    if-eqz v6, :cond_83

    :try_start_7a
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_7e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_39

    :cond_7d
    :goto_7d
    :try_start_7d
    throw v3

    :catch_7e
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_83
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_86} :catch_39

    goto :goto_7d

    .line 249
    .end local v10    # "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "resolver":Landroid/content/ContentResolver;
    :cond_87
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->prepareFontData(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v17

    .line 251
    .local v17, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v4

    .line 252
    .local v4, "fontFamily":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 253
    .local v9, "atLeastOneFont":Z
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_9e
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_dc

    aget-object v12, p3, v18

    .line 254
    .local v12, "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v12}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 255
    .local v5, "fontBuffer":Ljava/nio/ByteBuffer;
    if-nez v5, :cond_b9

    .line 253
    :goto_b4
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    goto :goto_9e

    .line 259
    :cond_b9
    invoke-virtual {v12}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v6

    invoke-virtual {v12}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v7

    invoke-virtual {v12}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_d8

    const/4 v8, 0x1

    :goto_c8
    move-object/from16 v3, p0

    .line 258
    invoke-direct/range {v3 .. v8}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v15

    .line 260
    .local v15, "success":Z
    if-nez v15, :cond_da

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 262
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 259
    .end local v15    # "success":Z
    :cond_d8
    const/4 v8, 0x0

    goto :goto_c8

    .line 264
    .restart local v15    # "success":Z
    :cond_da
    const/4 v9, 0x1

    goto :goto_b4

    .line 266
    .end local v5    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "font":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .end local v15    # "success":Z
    :cond_dc
    if-nez v9, :cond_e6

    .line 267
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 268
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 270
    :cond_e6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 271
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 273
    :cond_f1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v16

    .line 274
    .local v16, "typeface":Landroid/graphics/Typeface;
    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto/16 :goto_7

    .line 245
    .end local v4    # "fontFamily":Ljava/lang/Object;
    .end local v9    # "atLeastOneFont":Z
    .end local v16    # "typeface":Landroid/graphics/Typeface;
    .end local v17    # "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .restart local v10    # "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "resolver":Landroid/content/ContentResolver;
    :catchall_101
    move-exception v3

    goto/16 :goto_76
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 284
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    .line 285
    invoke-super/range {p0 .. p5}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 297
    :cond_c
    :goto_c
    return-object v7

    .line 287
    :cond_d
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, "fontFamily":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 291
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    goto :goto_c

    .line 294
    :cond_20
    invoke-direct {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v7

    goto :goto_c
.end method

.method protected obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 331
    const-string v0, "abortCreation"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v0, "addFontFromAssetManager"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/res/AssetManager;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 321
    const-string v0, "addFontFromBuffer"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 336
    invoke-static {p1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "familyArray":Ljava/lang/Object;
    const-class v2, Landroid/graphics/Typeface;

    const-string v3, "createFromFamiliesWithDefault"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 337
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 339
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 340
    return-object v1
.end method

.method protected obtainFontFamily()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method protected obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "fontFamily"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v0, "freeze"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
