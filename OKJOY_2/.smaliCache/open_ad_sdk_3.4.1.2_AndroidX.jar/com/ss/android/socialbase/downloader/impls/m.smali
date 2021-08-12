.class public Lcom/ss/android/socialbase/downloader/impls/m;
.super Lcom/ss/android/socialbase/downloader/downloader/h$a;
.source "IndependentDownloadBinder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/downloader/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/h$a;-><init>()V

    .line 36
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 135
    const/4 p1, 0x0

    return p1

    .line 136
    :cond_6
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 121
    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 86
    return-void

    .line 87
    :cond_5
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->a()V

    .line 88
    return-void
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 51
    return-void

    .line 52
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(I)V

    .line 53
    return-void
.end method

.method public a(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 393
    return-void

    .line 394
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(II)V

    .line 395
    return-void
.end method

.method public a(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 351
    return-void

    .line 352
    :cond_5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIII)V

    .line 353
    return-void
.end method

.method public a(IIIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 344
    return-void

    .line 345
    :cond_5
    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIIJ)V

    .line 346
    return-void
.end method

.method public a(IIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 337
    return-void

    .line 338
    :cond_5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IIJ)V

    .line 339
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 205
    return-void

    .line 206
    :cond_5
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 207
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/depend/i;IZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 221
    return-void

    .line 222
    :cond_5
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;ZZ)V

    .line 223
    return-void
.end method

.method public a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 256
    return-void

    .line 258
    :cond_5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IJ)V

    .line 259
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 235
    return-void

    .line 236
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILandroid/app/Notification;)V

    .line 237
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/depend/aa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 414
    return-void

    .line 415
    :cond_5
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/aa;)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILcom/ss/android/socialbase/downloader/depend/ab;)V

    .line 416
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 372
    return-void

    .line 373
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(ILjava/util/List;)V

    .line 374
    return-void
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 58
    return-void

    .line 59
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IZ)V

    .line 60
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 386
    return-void

    .line 387
    :cond_5
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ak;)Lcom/ss/android/socialbase/downloader/depend/al;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/depend/al;)V

    .line 388
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 43
    return-void

    .line 44
    :cond_5
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/model/a;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;)V

    .line 45
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 309
    return-void

    .line 310
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 311
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 170
    return-void

    .line 171
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/util/List;)V

    .line 172
    return-void
.end method

.method public a(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 242
    return-void

    .line 243
    :cond_5
    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ZZ)V

    .line 244
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 228
    const/4 p1, 0x0

    return p1

    .line 229
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 142
    const/4 p1, 0x0

    return-object p1

    .line 143
    :cond_6
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 149
    const/4 p1, 0x0

    return-object p1

    .line 150
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(IILcom/ss/android/socialbase/downloader/depend/i;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 214
    return-void

    .line 215
    :cond_5
    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/i;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/i/e;->e(I)Lcom/ss/android/socialbase/downloader/constants/g;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(IILcom/ss/android/socialbase/downloader/depend/IDownloadListener;Lcom/ss/android/socialbase/downloader/constants/g;Z)V

    .line 216
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 379
    return-void

    .line 380
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(ILjava/util/List;)V

    .line 381
    return-void
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 184
    return-void

    .line 185
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IZ)V

    .line 186
    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-eqz v0, :cond_7

    .line 177
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(Ljava/util/List;)V

    .line 179
    :cond_7
    return-void
.end method

.method public b()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 264
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_6
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->c()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 65
    const/4 p1, 0x0

    return p1

    .line 66
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(I)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 316
    const/4 p1, 0x0

    return p1

    .line 317
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 156
    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 72
    return-void

    .line 73
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->c(I)V

    .line 74
    return-void
.end method

.method public c(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 191
    return-void

    .line 192
    :cond_5
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/l;->b(IZ)V

    .line 193
    return-void
.end method

.method public c()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 292
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_6
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->e()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 163
    const/4 p1, 0x0

    return-object p1

    .line 164
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 365
    return-void

    .line 366
    :cond_5
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->f()V

    .line 367
    return-void
.end method

.method public d(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 79
    return-void

    .line 80
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(I)V

    .line 81
    return-void
.end method

.method public d(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 299
    return-void
.end method

.method public e(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_7

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0

    .line 94
    :cond_7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 271
    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 249
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_6
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/l;->b()Z

    move-result v0

    return v0
.end method

.method public f(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 100
    const/4 p1, 0x0

    return p1

    .line 101
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->f(I)I

    move-result p1

    return p1
.end method

.method public g(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 107
    const/4 p1, 0x0

    return p1

    .line 108
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->g(I)Z

    move-result p1

    return p1
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 114
    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->h(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1
.end method

.method public i(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 128
    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 198
    return-void

    .line 199
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->j(I)V

    .line 200
    return-void
.end method

.method public k(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 278
    const/4 p1, 0x0

    return p1

    .line 279
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->l(I)Z

    move-result p1

    return p1
.end method

.method public l(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 285
    return-void

    .line 286
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->k(I)V

    .line 287
    return-void
.end method

.method public m(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result p1

    return p1
.end method

.method public n(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 323
    const/4 p1, 0x0

    return p1

    .line 324
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->n(I)Z

    move-result p1

    return p1
.end method

.method public o(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_5

    .line 330
    return-void

    .line 331
    :cond_5
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->o(I)V

    .line 332
    return-void
.end method

.method public p(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 358
    const/4 p1, 0x0

    return p1

    .line 359
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->p(I)Z

    move-result p1

    return p1
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/depend/aa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 400
    const/4 p1, 0x0

    return-object p1

    .line 401
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->q(I)Lcom/ss/android/socialbase/downloader/depend/ab;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ab;)Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object p1

    return-object p1
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/depend/ag;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 407
    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->r(I)Lcom/ss/android/socialbase/downloader/depend/ah;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/ah;)Lcom/ss/android/socialbase/downloader/depend/ag;

    move-result-object p1

    return-object p1
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/depend/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/l;

    if-nez v0, :cond_6

    .line 421
    const/4 p1, 0x0

    return-object p1

    .line 422
    :cond_6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/l;->s(I)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/f;->a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/depend/g;

    move-result-object p1

    return-object p1
.end method
