.class Lcom/bytedance/sdk/a/b/a/e/g$c;
.super Lcom/bytedance/sdk/a/b/a/b;
.source "Http2Connection.java"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/e/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/e/h;

.field final synthetic c:Lcom/bytedance/sdk/a/b/a/e/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/b/a/e/g;Lcom/bytedance/sdk/a/b/a/e/h;)V
    .registers 5

    .line 583
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 584
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    .line 586
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 7

    .line 727
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/g$c$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/bytedance/sdk/a/b/a/e/g$c$3;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/a/b/a/e/n;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 736
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 741
    return-void
.end method

.method public a(IIIZ)V
    .registers 5

    .line 798
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 802
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;)V

    .line 803
    return-void
.end method

.method public a(IJ)V
    .registers 7

    .line 779
    if-nez p1, :cond_16

    .line 780
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v0

    .line 781
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 782
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 783
    monitor-exit v0

    goto :goto_27

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1

    .line 785
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object p1

    .line 786
    if-eqz p1, :cond_27

    .line 787
    monitor-enter p1

    .line 788
    :try_start_1f
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/i;->a(J)V

    .line 789
    monitor-exit p1

    goto :goto_27

    :catchall_24
    move-exception p2

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw p2

    .line 792
    :cond_27
    :goto_27
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4

    .line 680
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 681
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->c(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 682
    return-void

    .line 684
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object p1

    .line 685
    if-eqz p1, :cond_19

    .line 686
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->c(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 688
    :cond_19
    return-void
.end method

.method public a(ILcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/a/f;)V
    .registers 7

    .line 758
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    .line 763
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter p2

    .line 764
    :try_start_6
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p3, p3, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/bytedance/sdk/a/b/a/e/i;

    .line 765
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    .line 766
    monitor-exit p2
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_48

    .line 769
    array-length p2, p3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, p2, :cond_47

    aget-object v1, p3, v0

    .line 770
    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->a()I

    move-result v2

    if-le v2, p1, :cond_44

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 771
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/a/e/i;->c(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 772
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 769
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 775
    :cond_47
    return-void

    .line 766
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public a(ZII)V
    .registers 6

    .line 745
    if-eqz p1, :cond_e

    .line 746
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->c(I)Lcom/bytedance/sdk/a/b/a/e/l;

    move-result-object p1

    .line 747
    if-eqz p1, :cond_d

    .line 748
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/l;->b()V

    .line 750
    :cond_d
    goto :goto_15

    .line 752
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ZIILcom/bytedance/sdk/a/b/a/e/l;)V

    .line 754
    :goto_15
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 632
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 633
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {p3, p2, p4, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;Z)V

    .line 634
    return-void

    .line 637
    :cond_e
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter p3

    .line 638
    :try_start_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    .line 640
    if-nez v0, :cond_6e

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v0, :cond_21

    monitor-exit p3

    return-void

    .line 645
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    if-gt p2, v0, :cond_29

    monitor-exit p3

    return-void

    .line 648
    :cond_29
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_35

    monitor-exit p3

    return-void

    .line 651
    :cond_35
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/a/b/a/e/i;-><init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V

    .line 653
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p2, p1, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    .line 654
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object p1, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lcom/bytedance/sdk/a/b/a/e/g$c$1;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p4, p0, v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/e/g$c$1;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/a/b/a/e/i;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 669
    monitor-exit p3

    return-void

    .line 671
    :cond_6e
    monitor-exit p3
    :try_end_6f
    .catchall {:try_start_11 .. :try_end_6f} :catchall_78

    .line 674
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Ljava/util/List;)V

    .line 675
    if-eqz p1, :cond_77

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->i()V

    .line 676
    :cond_77
    return-void

    .line 671
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public a(ZILcom/bytedance/sdk/a/a/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/a/e;IZ)V

    .line 615
    return-void

    .line 617
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    .line 618
    if-nez v0, :cond_22

    .line 619
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 620
    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    .line 621
    return-void

    .line 623
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/a/e;I)V

    .line 624
    if-eqz p1, :cond_2a

    .line 625
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->i()V

    .line 627
    :cond_2a
    return-void
.end method

.method public a(ZLcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 13

    .line 692
    nop

    .line 693
    nop

    .line 694
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v0

    .line 695
    :try_start_5
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v1

    .line 696
    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->a()V

    .line 697
    :cond_16
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/n;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 698
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/a/b/a/e/g$c;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 699
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object p1, p1, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p1

    .line 700
    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_66

    if-eq p1, v1, :cond_66

    .line 701
    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 702
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    if-nez v1, :cond_42

    .line 703
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(J)V

    .line 704
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iput-boolean v4, v1, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    .line 706
    :cond_42
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 707
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v5, v5, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/bytedance/sdk/a/b/a/e/i;

    goto :goto_67

    .line 710
    :cond_66
    move-wide p1, v2

    :cond_67
    :goto_67
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/bytedance/sdk/a/b/a/e/g$c$2;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v8, v8, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lcom/bytedance/sdk/a/b/a/e/g$c$2;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 716
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_94

    .line 717
    if-eqz v5, :cond_93

    cmp-long v0, p1, v2

    if-eqz v0, :cond_93

    .line 718
    array-length v0, v5

    :goto_84
    if-ge v9, v0, :cond_93

    aget-object v1, v5, v9

    .line 719
    monitor-enter v1

    .line 720
    :try_start_89
    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->a(J)V

    .line 721
    monitor-exit v1

    .line 718
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    .line 721
    :catchall_90
    move-exception p1

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_90

    throw p1

    .line 724
    :cond_93
    return-void

    .line 716
    :catchall_94
    move-exception p1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw p1
.end method

.method protected b()V
    .registers 5

    .line 590
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 591
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 593
    :try_start_4
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/b/a/e/h$b;)V

    .line 594
    :goto_9
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(ZLcom/bytedance/sdk/a/b/a/e/h$b;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_9

    .line 596
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 597
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_17} :catch_21
    .catchall {:try_start_4 .. :try_end_17} :catchall_1f

    .line 603
    :try_start_17
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_2b

    .line 604
    :catch_1d
    move-exception v0

    goto :goto_2d

    .line 602
    :catchall_1f
    move-exception v2

    goto :goto_34

    .line 598
    :catch_21
    move-exception v2

    .line 599
    :try_start_22
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 600
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_1f

    .line 603
    :try_start_26
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 605
    :goto_2b
    goto :goto_2d

    .line 604
    :catch_2c
    move-exception v0

    .line 606
    :goto_2d
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 607
    nop

    .line 608
    return-void

    .line 603
    :goto_34
    :try_start_34
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v3, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_3a

    .line 605
    goto :goto_3b

    .line 604
    :catch_3a
    move-exception v0

    .line 606
    :goto_3b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 607
    throw v2
.end method
