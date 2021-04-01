.class public final Lcom/mintegral/msdk/base/common/c/b;
.super Ljava/lang/Object;
.source "CommonImageLoader.java"


# static fields
.field private static a:Lcom/mintegral/msdk/base/common/c/b;


# instance fields
.field private b:Lcom/mintegral/msdk/base/common/f/b;

.field private c:Lcom/mintegral/msdk/base/common/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mintegral/msdk/base/common/a/b",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/common/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    .line 47
    new-instance v0, Lcom/mintegral/msdk/base/common/c/b$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/base/common/c/b$1;-><init>(Lcom/mintegral/msdk/base/common/c/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->e:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->b:Lcom/mintegral/msdk/base/common/f/b;

    .line 112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 113
    div-int/lit8 v0, v0, 0x5

    .line 114
    new-instance v1, Lcom/mintegral/msdk/base/common/a/a;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/base/common/a/a;-><init>(I)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    .line 115
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;
    .registers 2

    .prologue
    .line 118
    sget-object v0, Lcom/mintegral/msdk/base/common/c/b;->a:Lcom/mintegral/msdk/base/common/c/b;

    if-nez v0, :cond_b

    .line 119
    new-instance v0, Lcom/mintegral/msdk/base/common/c/b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mintegral/msdk/base/common/c/b;->a:Lcom/mintegral/msdk/base/common/c/b;

    .line 121
    :cond_b
    sget-object v0, Lcom/mintegral/msdk/base/common/c/b;->a:Lcom/mintegral/msdk/base/common/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/base/common/c/b;)Ljava/util/LinkedHashMap;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/common/c/c;)V
    .registers 9

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 248
    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    new-instance v0, Lcom/mintegral/msdk/base/common/c/b$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/c/b$2;-><init>(Lcom/mintegral/msdk/base/common/c/b;)V

    .line 1298
    new-instance v1, Lcom/mintegral/msdk/base/common/c/d;

    invoke-direct {v1, p1, p2, p3}, Lcom/mintegral/msdk/base/common/c/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v1, p4}, Lcom/mintegral/msdk/base/common/c/d;->a(Z)V

    .line 1301
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/common/c/d;->a(Lcom/mintegral/msdk/base/common/c/d$a;)V

    .line 251
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->b:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 259
    :goto_2a
    return-void

    .line 253
    :cond_2b
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 254
    if-eqz v0, :cond_3e

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 255
    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_3e
    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loading:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method static synthetic b(Lcom/mintegral/msdk/base/common/c/b;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 132
    sget-object v0, Lcom/mintegral/msdk/base/common/c/b;->a:Lcom/mintegral/msdk/base/common/c/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/c/b;->c()V

    .line 133
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/base/common/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 166
    :cond_7
    :goto_7
    return-object v0

    .line 155
    :cond_8
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/c/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 158
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/c/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7

    .line 159
    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    invoke-virtual {p0, p1, v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 163
    goto :goto_7
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/common/a/b;->a()V

    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_e

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 129
    :cond_e
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/c/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/base/common/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    :cond_d
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    .registers 9

    .prologue
    .line 143
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1227
    :cond_16
    :goto_16
    return-void

    .line 1214
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/c/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1216
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1217
    invoke-interface {p2, v1, p1}, Lcom/mintegral/msdk/base/common/c/c;->onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_16

    .line 1218
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1219
    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_69

    .line 1221
    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "url image ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] is downloaded, save by file ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p0, p1, v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1223
    invoke-interface {p2, v0, p1}, Lcom/mintegral/msdk/base/common/c/c;->onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_16

    .line 1225
    :cond_69
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/common/c/c;)V

    goto :goto_16

    .line 1229
    :cond_72
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/common/c/c;)V

    goto :goto_16
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    :cond_8
    :goto_8
    return v0

    .line 178
    :cond_9
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/c/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1a

    move v0, v1

    .line 181
    goto :goto_8

    .line 182
    :cond_1a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 183
    goto :goto_8
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    if-eqz v0, :cond_9

    .line 308
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/c/b;->c:Lcom/mintegral/msdk/base/common/a/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/base/common/a/b;->a()V

    .line 310
    :cond_9
    return-void
.end method
