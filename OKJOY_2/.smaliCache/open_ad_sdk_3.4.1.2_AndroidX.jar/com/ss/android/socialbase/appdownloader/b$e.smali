.class Lcom/ss/android/socialbase/appdownloader/b$e;
.super Ljava/lang/Object;
.source "AhUtils.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/h/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field public static a:I

.field private static b:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/Intent;

.field private final e:Lcom/ss/android/socialbase/appdownloader/b$b;

.field private final f:Landroid/os/Handler;

.field private final g:J

.field private h:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILcom/ss/android/socialbase/appdownloader/b$b;J)V
    .registers 8

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->i:Z

    .line 1230
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    .line 1231
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/content/Intent;

    .line 1232
    sput p3, Lcom/ss/android/socialbase/appdownloader/b$e;->b:I

    .line 1233
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:Lcom/ss/android/socialbase/appdownloader/b$b;

    .line 1234
    new-instance p1, Lcom/ss/android/socialbase/downloader/h/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/ss/android/socialbase/downloader/h/g;-><init>(Landroid/os/Looper;Lcom/ss/android/socialbase/downloader/h/g$a;)V

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Landroid/os/Handler;

    .line 1235
    iput-wide p5, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:J

    .line 1236
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/b$e;)Z
    .registers 1

    .line 1215
    iget-boolean p0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/b$e;)Landroid/os/Handler;
    .registers 1

    .line 1215
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .registers 9

    .line 1240
    if-eqz p1, :cond_97

    .line 1241
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 1242
    iget-wide v2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_31

    const-wide/16 v4, 0x2710

    cmp-long p1, v2, v4

    if-lez p1, :cond_16

    goto :goto_31

    .line 1248
    :cond_16
    sput v1, Lcom/ss/android/socialbase/appdownloader/b$e;->a:I

    .line 1249
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v6, Lcom/ss/android/socialbase/appdownloader/b$d;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->e:Lcom/ss/android/socialbase/appdownloader/b$b;

    iget-wide v4, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->g:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/appdownloader/b$d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/ss/android/socialbase/appdownloader/b$b;J)V

    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->h:Ljava/util/concurrent/Future;

    goto :goto_97

    .line 1243
    :cond_31
    :goto_31
    return-void

    .line 1250
    :cond_32
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_97

    .line 1251
    sput v0, Lcom/ss/android/socialbase/appdownloader/b$e;->a:I

    .line 1252
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1253
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->f:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1254
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->h:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_4a

    .line 1255
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1258
    :cond_4a
    iget-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->i:Z

    const/4 v0, 0x0

    if-nez p1, :cond_86

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_5f

    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_86

    .line 1259
    :cond_5f
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/content/Intent;

    if-eqz p1, :cond_69

    .line 1260
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_84

    .line 1262
    :cond_69
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    sget v2, Lcom/ss/android/socialbase/appdownloader/b$e;->b:I

    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    .line 1263
    if-eqz p1, :cond_84

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isDownloadOverStatus()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 1264
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    sget v2, Lcom/ss/android/socialbase/appdownloader/b$e;->b:I

    invoke-static {p1, v2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->b(Landroid/content/Context;IZ)I

    .line 1267
    :cond_84
    :goto_84
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->i:Z

    .line 1269
    :cond_86
    iget-object p1, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->d:Landroid/content/Intent;

    if-nez p1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v1, v0

    .line 1270
    :goto_8c
    sget p1, Lcom/ss/android/socialbase/appdownloader/b$e;->b:I

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/b$e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(IZZ)V

    .line 1273
    :cond_97
    :goto_97
    return-void
.end method
