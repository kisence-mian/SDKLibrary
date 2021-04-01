.class Landroid/support/v7/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    .line 56
    :cond_6
    :goto_6
    return-void

    .line 49
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 50
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    goto :goto_6

    .line 51
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    .line 52
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_6

    .line 53
    :cond_1b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 54
    invoke-static {p0}, Landroid/support/v7/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    goto :goto_6
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 60
    sget-boolean v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_17

    .line 62
    :try_start_5
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 63
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_2c

    .line 67
    :goto_15
    sput-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 69
    :cond_17
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2b

    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "drawableCache":Ljava/util/Map;
    :try_start_1c
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_26} :catch_35

    .line 76
    :goto_26
    if-eqz v1, :cond_2b

    .line 77
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 80
    .end local v1    # "drawableCache":Ljava/util/Map;
    :cond_2b
    return-void

    .line 64
    :catch_2c
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 73
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "drawableCache":Ljava/util/Map;
    :catch_35
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 84
    sget-boolean v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v2, :cond_17

    .line 86
    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 87
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_25

    .line 91
    :goto_15
    sput-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 94
    :cond_17
    const/4 v0, 0x0

    .line 95
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    .line 97
    :try_start_1c
    sget-object v2, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_21} :catch_2e

    move-result-object v0

    .line 103
    .end local v0    # "drawableCache":Ljava/lang/Object;
    :cond_22
    :goto_22
    if-nez v0, :cond_37

    .line 109
    :goto_24
    return-void

    .line 88
    :catch_25
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 98
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "drawableCache":Ljava/lang/Object;
    :catch_2e
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "ResourcesFlusher"

    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 108
    .end local v0    # "drawableCache":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_37
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    goto :goto_24
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .registers 7
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 113
    sget-boolean v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    if-nez v3, :cond_17

    .line 115
    :try_start_5
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "mResourcesImpl"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 116
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_1c

    .line 120
    :goto_15
    sput-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 123
    :cond_17
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_25

    .line 162
    :cond_1b
    :goto_1b
    return-void

    .line 117
    :catch_1c
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 128
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_25
    const/4 v2, 0x0

    .line 130
    .local v2, "resourcesImpl":Ljava/lang/Object;
    :try_start_26
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2b} :catch_57

    move-result-object v2

    .line 135
    .end local v2    # "resourcesImpl":Ljava/lang/Object;
    :goto_2c
    if-eqz v2, :cond_1b

    .line 140
    sget-boolean v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_46

    .line 142
    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 143
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_44
    .catch Ljava/lang/NoSuchFieldException; {:try_start_32 .. :try_end_44} :catch_60

    .line 147
    :goto_44
    sput-boolean v5, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 150
    :cond_46
    const/4 v0, 0x0

    .line 151
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_51

    .line 153
    :try_start_4b
    sget-object v3, Landroid/support/v7/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_50} :catch_69

    move-result-object v0

    .line 159
    .end local v0    # "drawableCache":Ljava/lang/Object;
    :cond_51
    :goto_51
    if-eqz v0, :cond_1b

    .line 160
    invoke-static {v0}, Landroid/support/v7/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    goto :goto_1b

    .line 131
    .restart local v2    # "resourcesImpl":Ljava/lang/Object;
    :catch_57
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 144
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "resourcesImpl":Ljava/lang/Object;
    :catch_60
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 154
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "drawableCache":Ljava/lang/Object;
    :catch_69
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ResourcesFlusher"

    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .registers 8
    .param p0, "cache"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 166
    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    if-nez v4, :cond_f

    .line 168
    :try_start_5
    const-string v4, "android.content.res.ThemedResourceCache"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_d} :catch_14

    .line 172
    :goto_d
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 175
    :cond_f
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v4, :cond_1d

    .line 207
    :cond_13
    :goto_13
    return-void

    .line 169
    :catch_14
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not find ThemedResourceCache class"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 180
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1d
    sget-boolean v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v4, :cond_33

    .line 182
    :try_start_21
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string v5, "mUnthemedEntries"

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 184
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_31} :catch_48

    .line 188
    :goto_31
    sput-boolean v6, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 191
    :cond_33
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_13

    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, "unthemedEntries":Landroid/util/LongSparseArray;
    :try_start_38
    sget-object v4, Landroid/support/v7/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 199
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/util/LongSparseArray;

    move-object v3, v0
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_42} :catch_51

    .line 204
    :goto_42
    if-eqz v3, :cond_13

    .line 205
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_13

    .line 185
    .end local v3    # "unthemedEntries":Landroid/util/LongSparseArray;
    :catch_48
    move-exception v2

    .line 186
    .local v2, "ee":Ljava/lang/NoSuchFieldException;
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 200
    .end local v2    # "ee":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "unthemedEntries":Landroid/util/LongSparseArray;
    :catch_51
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "ResourcesFlusher"

    const-string v5, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method
