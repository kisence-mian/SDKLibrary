.class public Lcom/ss/android/socialbase/downloader/impls/m;
.super Lcom/ss/android/socialbase/downloader/downloader/j$a;
.source "IndependentDownloadBinder.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;-><init>()V

    .line 36
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

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

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 135
    const/4 v0, 0x0

    .line 136
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 121
    const/4 v0, 0x0

    .line 122
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 88
    :goto_4
    return-void

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a()V

    goto :goto_4
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 53
    :goto_4
    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    goto :goto_4
.end method

.method public a(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 366
    :goto_4
    return-void

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(II)V

    goto :goto_4
.end method

.method public a(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 324
    :goto_4
    return-void

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    goto :goto_4
.end method

.method public a(IIIJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 317
    :goto_4
    return-void

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    goto :goto_4
.end method

.method public a(IIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 310
    :goto_4
    return-void

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_4
.end method

.method public a(IILcom/ss/android/socialbase/downloader/d/i;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 193
    :goto_4
    return-void

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/m/f;->c(I)Lcom/ss/android/socialbase/downloader/b/h;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    goto :goto_4
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 216
    :goto_4
    return-void

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILandroid/app/Notification;)V

    goto :goto_4
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/y;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 387
    :goto_4
    return-void

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/y;)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILcom/ss/android/socialbase/downloader/d/z;)V

    goto :goto_4
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 345
    :goto_4
    return-void

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(ILjava/util/List;)V

    goto :goto_4
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 60
    :goto_4
    return-void

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IZ)V

    goto :goto_4
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/af;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 359
    :goto_4
    return-void

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/af;)Lcom/ss/android/socialbase/downloader/d/ag;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/d/ag;)V

    goto :goto_4
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 45
    :goto_4
    return-void

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/g/a;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Lcom/ss/android/socialbase/downloader/g/d;)V

    goto :goto_4
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 282
    :goto_4
    return-void

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    goto :goto_4
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 172
    :goto_4
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    goto :goto_4
.end method

.method public a(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 223
    :goto_4
    return-void

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ZZ)V

    goto :goto_4
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 207
    const/4 v0, 0x0

    .line 208
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    goto :goto_5
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 142
    const/4 v0, 0x0

    .line 143
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_5
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 149
    const/4 v0, 0x0

    .line 150
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public b(IILcom/ss/android/socialbase/downloader/d/i;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 202
    :goto_4
    return-void

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-static {p3}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/i;)Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v3

    invoke-static {p4}, Lcom/ss/android/socialbase/downloader/m/f;->c(I)Lcom/ss/android/socialbase/downloader/b/h;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    goto :goto_4
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 352
    :goto_4
    return-void

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    goto :goto_4
.end method

.method public b(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 179
    :goto_4
    return-void

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IZ)V

    goto :goto_4
.end method

.method public b()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 235
    const/4 v0, 0x0

    .line 236
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c()Z

    move-result v0

    goto :goto_5
.end method

.method public b(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(I)Z

    move-result v0

    goto :goto_5
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 287
    const/4 v0, 0x0

    .line 288
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    goto :goto_5
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 156
    const/4 v0, 0x0

    .line 157
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public c(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(I)V

    goto :goto_4
.end method

.method public c(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    .line 270
    return-void
.end method

.method public c()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 263
    const/4 v0, 0x0

    .line 264
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->e()Z

    move-result v0

    goto :goto_5
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 163
    const/4 v0, 0x0

    .line 164
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 338
    :goto_4
    return-void

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->f()V

    goto :goto_4
.end method

.method public d(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 81
    :goto_4
    return-void

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(I)V

    goto :goto_4
.end method

.method public e(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_7

    .line 93
    const-wide/16 v0, 0x0

    .line 94
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->e(I)J

    move-result-wide v0

    goto :goto_6
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 242
    const/4 v0, 0x0

    .line 243
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public e()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 228
    const/4 v0, 0x0

    .line 229
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v0

    goto :goto_5
.end method

.method public f(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->f(I)I

    move-result v0

    goto :goto_5
.end method

.method public g(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->g(I)Z

    move-result v0

    goto :goto_5
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_5
.end method

.method public i(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    .line 129
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public j(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 186
    :goto_4
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->j(I)V

    goto :goto_4
.end method

.method public k(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 249
    const/4 v0, 0x0

    .line 250
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->l(I)Z

    move-result v0

    goto :goto_5
.end method

.method public l(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 258
    :goto_4
    return-void

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->k(I)V

    goto :goto_4
.end method

.method public m(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result v0

    return v0
.end method

.method public n(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 294
    const/4 v0, 0x0

    .line 295
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->n(I)Z

    move-result v0

    goto :goto_5
.end method

.method public o(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_5

    .line 303
    :goto_4
    return-void

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)V

    goto :goto_4
.end method

.method public p(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 329
    const/4 v0, 0x0

    .line 330
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->p(I)Z

    move-result v0

    goto :goto_5
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/d/y;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 371
    const/4 v0, 0x0

    .line 372
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->q(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/d/y;

    move-result-object v0

    goto :goto_5
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/d/ab;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->r(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/d/ab;

    move-result-object v0

    goto :goto_5
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/d/g;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_6

    .line 392
    const/4 v0, 0x0

    .line 393
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->b:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->s(I)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/m/g;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/d/g;

    move-result-object v0

    goto :goto_5
.end method
