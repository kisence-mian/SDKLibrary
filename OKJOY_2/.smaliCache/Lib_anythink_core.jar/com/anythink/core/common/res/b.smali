.class public final Lcom/anythink/core/common/res/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/res/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "ImageLoader"

.field private static c:Lcom/anythink/core/common/res/b;


# instance fields
.field a:Landroid/content/Context;

.field private d:Lcom/anythink/core/common/res/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/core/common/res/c<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/res/b$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/res/b;->e:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/res/b;->a:Landroid/content/Context;

    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int p1, v0

    .line 155
    div-int/lit8 p1, p1, 0x5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageLoad init cache size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoader"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/anythink/core/common/res/b$3;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/res/b$3;-><init>(Lcom/anythink/core/common/res/b;I)V

    iput-object v0, p0, Lcom/anythink/core/common/res/b;->d:Lcom/anythink/core/common/res/c;

    .line 192
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->d:Lcom/anythink/core/common/res/c;

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/res/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 107
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/res/b;
    .registers 3

    const-class v0, Lcom/anythink/core/common/res/b;

    monitor-enter v0

    .line 196
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/res/b;->c:Lcom/anythink/core/common/res/b;

    if-nez v1, :cond_e

    .line 197
    new-instance v1, Lcom/anythink/core/common/res/b;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/res/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/res/b;->c:Lcom/anythink/core/common/res/b;

    .line 199
    :cond_e
    sget-object p0, Lcom/anythink/core/common/res/b;->c:Lcom/anythink/core/common/res/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 195
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private a()V
    .registers 2

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->d:Lcom/anythink/core/common/res/c;

    if-eqz v0, :cond_7

    .line 287
    invoke-virtual {v0}, Lcom/anythink/core/common/res/c;->a()V

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_e

    .line 290
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 309
    :cond_e
    return-void

    .line 305
    :catch_f
    move-exception v0

    .line 311
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/res/b;Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    .registers 7

    .line 29
    nop

    .line 2250
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2252
    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2253
    iget-object p4, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2254
    new-instance p4, Lcom/anythink/core/common/res/image/a;

    invoke-direct {p4, p1}, Lcom/anythink/core/common/res/image/a;-><init>(Lcom/anythink/core/common/res/e;)V

    .line 2255
    new-instance v0, Lcom/anythink/core/common/res/b$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/anythink/core/common/res/b$5;-><init>(Lcom/anythink/core/common/res/b;IILcom/anythink/core/common/res/e;)V

    invoke-virtual {p4, v0}, Lcom/anythink/core/common/res/image/a;->a(Lcom/anythink/core/common/res/image/a$a;)V

    .line 2274
    invoke-virtual {p4}, Lcom/anythink/core/common/res/image/a;->d()V

    .line 2275
    return-void

    .line 2276
    :cond_2b
    iget-object p0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    .line 2277
    if-eqz p0, :cond_40

    invoke-virtual {p0, p4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 2278
    invoke-virtual {p0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_40
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 2046
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/res/b$1;-><init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method private static synthetic a(Lcom/anythink/core/common/res/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3068
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/res/b$2;-><init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 68
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/b$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/res/b$2;-><init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method private b(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    .registers 7

    .line 250
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 252
    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p4, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance p4, Lcom/anythink/core/common/res/image/a;

    invoke-direct {p4, p1}, Lcom/anythink/core/common/res/image/a;-><init>(Lcom/anythink/core/common/res/e;)V

    .line 255
    new-instance v0, Lcom/anythink/core/common/res/b$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/anythink/core/common/res/b$5;-><init>(Lcom/anythink/core/common/res/b;IILcom/anythink/core/common/res/e;)V

    invoke-virtual {p4, v0}, Lcom/anythink/core/common/res/image/a;->a(Lcom/anythink/core/common/res/image/a$a;)V

    .line 274
    invoke-virtual {p4}, Lcom/anythink/core/common/res/image/a;->d()V

    .line 275
    return-void

    .line 276
    :cond_2a
    iget-object p2, p0, Lcom/anythink/core/common/res/b;->f:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    .line 277
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 278
    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_3f
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 46
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/res/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/res/b$1;-><init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 114
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_44

    .line 117
    :cond_c
    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    .line 1114
    invoke-static {v1}, Lcom/anythink/core/common/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    nop

    .line 118
    nop

    .line 120
    iget-object v2, p0, Lcom/anythink/core/common/res/b;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_17
    iget-object v3, p0, Lcom/anythink/core/common/res/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v3

    iget p1, p1, Lcom/anythink/core/common/res/e;->c:I

    invoke-virtual {v3, p1, v1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 130
    if-nez p1, :cond_27

    .line 131
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_41

    return-object v0

    .line 135
    :cond_27
    :try_start_27
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 136
    invoke-static {v1, p2, p3}, Lcom/anythink/core/common/g/b;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_38

    .line 141
    if-eqz p1, :cond_37

    .line 142
    :try_start_31
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_37

    .line 144
    :catch_35
    move-exception p1

    .line 146
    goto :goto_3f

    .line 145
    :cond_37
    :goto_37
    goto :goto_3f

    .line 137
    :catchall_38
    move-exception p2

    .line 141
    if-eqz p1, :cond_37

    .line 142
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3e} :catch_35
    .catchall {:try_start_31 .. :try_end_3e} :catchall_41

    goto :goto_37

    .line 148
    :goto_3f
    :try_start_3f
    monitor-exit v2

    return-object v0

    .line 149
    :catchall_41
    move-exception p1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_41

    throw p1

    .line 115
    :cond_44
    :goto_44
    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    .registers 13

    .line 211
    if-eqz p1, :cond_2c

    iget-object v0, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 218
    :cond_b
    iget-object v0, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_19

    .line 220
    iget-object p1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-interface {p4, p1, v0}, Lcom/anythink/core/common/res/b$a;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 221
    return-void

    .line 223
    :cond_19
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/res/b$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/res/b$4;-><init>(Lcom/anythink/core/common/res/b;Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 241
    return-void

    .line 212
    :cond_2c
    :goto_2c
    if-eqz p4, :cond_35

    .line 213
    const-string p1, ""

    const-string p2, "No url info."

    invoke-interface {p4, p1, p2}, Lcom/anythink/core/common/res/b$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_35
    return-void
.end method

.method public final a(Lcom/anythink/core/common/res/e;Lcom/anythink/core/common/res/b$a;)V
    .registers 4

    .line 207
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    .line 94
    iget-object v0, p0, Lcom/anythink/core/common/res/b;->d:Lcom/anythink/core/common/res/c;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/anythink/core/common/res/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_12
    return-void
.end method
