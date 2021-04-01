.class public Lcom/mintegral/msdk/mtgdownload/c;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgdownload/c$a;,
        Lcom/mintegral/msdk/mtgdownload/c$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z

.field protected static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/b$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field protected static d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mintegral/msdk/mtgdownload/e$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final e:Landroid/os/Messenger;

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/NotificationManager;

.field private h:Lcom/mintegral/msdk/mtgdownload/e;

.field private i:Lcom/mintegral/msdk/mtgdownload/i;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-class v0, Lcom/mintegral/msdk/mtgdownload/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/mtgdownload/c;->b:Z

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mintegral/msdk/mtgdownload/c$b;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgdownload/c$b;-><init>(Lcom/mintegral/msdk/mtgdownload/c;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->e:Landroid/os/Messenger;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->k:Z

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->f:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/c;)Lcom/mintegral/msdk/mtgdownload/e;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgdownload/c;Lcom/mintegral/msdk/mtgdownload/b$a;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 1244
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startDownload([mComponentName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-static {p1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/b$a;)I

    move-result v1

    .line 1250
    new-instance v2, Lcom/mintegral/msdk/mtgdownload/k;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/mintegral/msdk/mtgdownload/k;-><init>(Lcom/mintegral/msdk/mtgdownload/c;Lcom/mintegral/msdk/mtgdownload/b$a;II)V

    .line 1252
    new-instance v3, Lcom/mintegral/msdk/mtgdownload/e$b;

    invoke-direct {v3, p1, v1}, Lcom/mintegral/msdk/mtgdownload/e$b;-><init>(Lcom/mintegral/msdk/mtgdownload/b$a;I)V

    .line 1253
    iget-object v4, p0, Lcom/mintegral/msdk/mtgdownload/c;->i:Lcom/mintegral/msdk/mtgdownload/i;

    invoke-virtual {v4, v1}, Lcom/mintegral/msdk/mtgdownload/i;->a(I)V

    .line 1254
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    .line 2098
    iget v4, v3, Lcom/mintegral/msdk/mtgdownload/e$b;->c:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1255
    iput-object v2, v3, Lcom/mintegral/msdk/mtgdownload/e$b;->a:Lcom/mintegral/msdk/mtgdownload/k;

    .line 1257
    invoke-virtual {v2}, Lcom/mintegral/msdk/mtgdownload/k;->start()V

    .line 2551
    sget-boolean v1, Lcom/mintegral/msdk/mtgdownload/c;->b:Z

    if-eqz v1, :cond_a3

    .line 2552
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 2553
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2554
    sget-object v3, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Client size ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   cacheSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    if-eq v1, v2, :cond_a3

    .line 2556
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client size ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   cacheSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1260
    :cond_a3
    sget-boolean v1, Lcom/mintegral/msdk/mtgdownload/c;->b:Z

    if-eqz v1, :cond_d4

    move v1, v0

    .line 1261
    :goto_a8
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_d4

    .line 1262
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 1263
    sget-object v2, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a8

    .line 95
    :cond_d4
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/Service;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgdownload/c;)Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->i:Lcom/mintegral/msdk/mtgdownload/i;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/i;->a()Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    iget-object v2, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_a

    .line 241
    :cond_20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)I
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 164
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    invoke-virtual {v0, p0, p1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Lcom/mintegral/msdk/mtgdownload/c;Landroid/content/Intent;)Z

    .line 169
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5e

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->i:Lcom/mintegral/msdk/mtgdownload/i;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/i;->b()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->k:Z

    if-eqz v0, :cond_5e

    .line 180
    :cond_20
    :try_start_20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    .line 183
    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 188
    const/4 v2, 0x3

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 188
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_69

    .line 196
    :cond_5e
    :goto_5e
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->k:Z

    if-eqz v0, :cond_68

    .line 197
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgdownload/c;->f()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->k:Z

    .line 201
    :cond_68
    return v8

    :catch_69
    move-exception v0

    goto :goto_5e
.end method

.method public final a()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 158
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->e:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 273
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_be

    .line 274
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 275
    iget-object v1, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->f:[J

    .line 277
    if-eqz v1, :cond_bf

    aget-wide v4, v1, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_bf

    .line 278
    aget-wide v4, v1, v2

    long-to-float v3, v4

    aget-wide v4, v1, v8

    long-to-float v1, v4

    div-float v1, v3, v1

    .line 279
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 281
    const/16 v3, 0x64

    if-le v1, v3, :cond_30

    .line 282
    const/16 v1, 0x63

    .line 285
    :cond_30
    :goto_30
    iget-object v3, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    iget-boolean v3, v3, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    if-nez v3, :cond_be

    .line 286
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/c;->f:Landroid/util/SparseArray;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    iget-object v4, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 1213
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1214
    new-instance v5, Lcom/mintegral/msdk/mtgdownload/e$a;

    invoke-direct {v5, v3}, Lcom/mintegral/msdk/mtgdownload/e$a;-><init>(Landroid/content/Context;)V

    .line 1215
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x8000000

    invoke-static {v3, v2, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1217
    iget-boolean v7, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->m:Z

    if-eqz v7, :cond_64

    .line 1218
    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgdownload/e$a;->b()V

    .line 1219
    const/4 v7, 0x2

    invoke-static {v3, v5, p1, v7}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;Lcom/mintegral/msdk/mtgdownload/e$a;II)V

    .line 1221
    :cond_64
    sget-object v3, Lcom/mintegral/msdk/mtgdownload/f;->e:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/mintegral/msdk/mtgdownload/e$a;->c(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/h;

    move-result-object v3

    .line 1222
    invoke-virtual {v3}, Lcom/mintegral/msdk/mtgdownload/h;->d()Lcom/mintegral/msdk/mtgdownload/h;

    move-result-object v3

    .line 1223
    invoke-virtual {v3, v6}, Lcom/mintegral/msdk/mtgdownload/h;->a(Landroid/app/PendingIntent;)Lcom/mintegral/msdk/mtgdownload/h;

    move-result-object v3

    .line 1224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/mintegral/msdk/mtgdownload/h;->a(J)Lcom/mintegral/msdk/mtgdownload/h;

    .line 1226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mintegral/msdk/mtgdownload/f;->f:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/mintegral/msdk/mtgdownload/e$a;->b(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1227
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;

    move-result-object v3

    .line 1228
    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(I)Lcom/mintegral/msdk/mtgdownload/e$a;

    .line 1230
    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgdownload/e$a;->c()Lcom/mintegral/msdk/mtgdownload/h;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgdownload/h;->a(Z)Lcom/mintegral/msdk/mtgdownload/h;

    .line 288
    iput-object v5, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    .line 289
    invoke-virtual {v5}, Lcom/mintegral/msdk/mtgdownload/e$a;->a()Landroid/app/Notification;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 293
    :cond_be
    return-void

    :cond_bf
    move v1, v2

    goto/16 :goto_30
.end method

.method public final a(II)V
    .registers 13

    .prologue
    .line 297
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_81

    .line 298
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 299
    iget-object v2, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    iget-boolean v1, v2, Lcom/mintegral/msdk/mtgdownload/b$a;->n:Z

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-lez v1, :cond_60

    .line 303
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->f:Landroid/util/SparseArray;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->b:Lcom/mintegral/msdk/mtgdownload/e$a;

    .line 305
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(I)Lcom/mintegral/msdk/mtgdownload/e$a;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/mtgdownload/e$a;->a(Ljava/lang/CharSequence;)Lcom/mintegral/msdk/mtgdownload/e$a;

    .line 307
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/e$a;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 309
    :cond_60
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    const-string v1, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v2, v2, Lcom/mintegral/msdk/mtgdownload/b$a;->c:Ljava/lang/String;

    aput-object v2, v3, v4

    .line 310
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_81
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 319
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_4e

    .line 320
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgdownload/e$b;

    .line 321
    if-eqz v0, :cond_4e

    .line 322
    iget-object v0, v0, Lcom/mintegral/msdk/mtgdownload/e$b;->e:Lcom/mintegral/msdk/mtgdownload/b$a;

    .line 324
    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgdownload/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/mtgdownload/d;

    move-result-object v1

    iget-object v2, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->d:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/mintegral/msdk/mtgdownload/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 329
    const-string v2, "filename"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, v0, Lcom/mintegral/msdk/mtgdownload/b$a;->b:Ljava/lang/String;

    const-string v3, "delta_update"

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 335
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 336
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 337
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 338
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 339
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 340
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    :cond_4e
    :goto_4e
    return-void

    .line 344
    :cond_4f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 345
    iput v6, v2, Landroid/os/Message;->what:I

    .line 346
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 347
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 349
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 350
    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/c;->j:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 355
    iput v6, v2, Landroid/os/Message;->what:I

    .line 356
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 357
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 358
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 361
    :try_start_70
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 362
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 364
    :cond_83
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_8a} :catch_8b

    goto :goto_4e

    .line 366
    :catch_8b
    move-exception v0

    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    goto :goto_4e
.end method

.method public final a(Landroid/app/Service;)V
    .registers 2

    .prologue
    .line 566
    iput-object p1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    .line 567
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 207
    sget-boolean v0, Lcom/mintegral/msdk/mtgdownload/c;->b:Z

    if-eqz v0, :cond_7

    .line 208
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 211
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    .line 212
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->g:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/j;->a(Landroid/app/NotificationManager;)V

    .line 213
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/i;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgdownload/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->i:Lcom/mintegral/msdk/mtgdownload/i;

    .line 214
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/e;

    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    sget-object v2, Lcom/mintegral/msdk/mtgdownload/c;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgdownload/c;->i:Lcom/mintegral/msdk/mtgdownload/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgdownload/e;-><init>(Landroid/util/SparseArray;Ljava/util/Map;Lcom/mintegral/msdk/mtgdownload/i;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    .line 216
    new-instance v0, Lcom/mintegral/msdk/mtgdownload/c$a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgdownload/c$a;-><init>(Lcom/mintegral/msdk/mtgdownload/c;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->j:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method public final b(I)V
    .registers 4

    .prologue
    .line 375
    sget-object v0, Lcom/mintegral/msdk/mtgdownload/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_f

    .line 376
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/mtgdownload/e;->a(Landroid/content/Context;I)V

    .line 378
    :cond_f
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/mtgdownload/d;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/d;->a()V

    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgdownload/d;->a(Landroid/content/Context;)Lcom/mintegral/msdk/mtgdownload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgdownload/d;->finalize()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 231
    :goto_1a
    return-void

    .line 228
    :catch_1b
    move-exception v0

    .line 229
    sget-object v1, Lcom/mintegral/msdk/mtgdownload/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public final d()Lcom/mintegral/msdk/mtgdownload/e;
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->h:Lcom/mintegral/msdk/mtgdownload/e;

    return-object v0
.end method

.method public final e()Landroid/app/Service;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/mintegral/msdk/mtgdownload/c;->l:Landroid/app/Service;

    return-object v0
.end method
