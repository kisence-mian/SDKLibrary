.class public abstract Lcom/ss/android/socialbase/downloader/d/d;
.super Lcom/ss/android/socialbase/downloader/d/b;
.source "AbsNotificationListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/d/b;-><init>()V

    return-void
.end method

.method private a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V
    .registers 9

    .prologue
    .line 65
    if-nez p2, :cond_3

    .line 82
    :cond_2
    :goto_2
    return-void

    .line 67
    :cond_3
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 69
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1e

    .line 71
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/d/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 74
    :cond_1e
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->b(J)V

    .line 75
    const/4 v1, -0x3

    if-ne p1, v1, :cond_34

    .line 76
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    .line 81
    :goto_2f
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, p4, v1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(ILcom/ss/android/socialbase/downloader/e/a;ZZ)V

    goto :goto_2

    .line 78
    :cond_34
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/notification/a;->a(J)V

    goto :goto_2f
.end method

.method private j(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    .line 53
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    :cond_8
    :goto_8
    return-void

    .line 55
    :cond_9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 56
    if-nez v0, :cond_23

    .line 57
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/d/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/notification/b;->a(Lcom/ss/android/socialbase/downloader/notification/a;)V

    goto :goto_8

    .line 60
    :cond_23
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/notification/a;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    goto :goto_8
.end method

.method private k(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 8

    .prologue
    .line 85
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->af()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 93
    :cond_f
    :goto_f
    return-void

    .line 87
    :cond_10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->e(I)Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 88
    if-nez v0, :cond_22

    .line 89
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/d/d;->a()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v0

    .line 92
    :cond_22
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->ab()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/ss/android/socialbase/downloader/notification/a;->a(JJ)V

    goto :goto_f
.end method


# virtual methods
.method protected abstract a()Lcom/ss/android/socialbase/downloader/notification/a;
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/b;->a(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->j(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0, v1}, Lcom/ss/android/socialbase/downloader/d/d;->a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 20
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V
    .registers 5

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/d/b;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;)V

    .line 49
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ss/android/socialbase/downloader/d/d;->a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 50
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/b;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 25
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/d/d;->a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 26
    return-void
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/b;->c(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/d/d;->k(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 32
    return-void
.end method

.method public d(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/b;->d(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 37
    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/d/d;->a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 38
    return-void
.end method

.method public e(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 5

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/ss/android/socialbase/downloader/d/b;->e(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 43
    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ss/android/socialbase/downloader/d/d;->a(ILcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;Z)V

    .line 44
    return-void
.end method
