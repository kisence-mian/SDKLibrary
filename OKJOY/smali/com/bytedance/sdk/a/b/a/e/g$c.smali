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
    .registers 7

    .prologue
    .line 578
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 579
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    .line 581
    return-void
.end method

.method private a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 8

    .prologue
    .line 722
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/g$c$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v5, v5, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/bytedance/sdk/a/b/a/e/g$c$3;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/a/b/a/e/n;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 736
    return-void
.end method

.method public a(IIIZ)V
    .registers 5

    .prologue
    .line 793
    return-void
.end method

.method public a(IILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;)V

    .line 798
    return-void
.end method

.method public a(IJ)V
    .registers 8

    .prologue
    .line 774
    if-nez p1, :cond_16

    .line 775
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v1

    .line 776
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lcom/bytedance/sdk/a/b/a/e/g;->k:J

    .line 777
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 778
    monitor-exit v1

    .line 787
    :cond_12
    :goto_12
    return-void

    .line 778
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 780
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v1

    .line 781
    if-eqz v1, :cond_12

    .line 782
    monitor-enter v1

    .line 783
    :try_start_1f
    invoke-virtual {v1, p2, p3}, Lcom/bytedance/sdk/a/b/a/e/i;->a(J)V

    .line 784
    monitor-exit v1

    goto :goto_12

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4

    .prologue
    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 676
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->c(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 683
    :cond_d
    :goto_d
    return-void

    .line 679
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_d

    .line 681
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/i;->c(Lcom/bytedance/sdk/a/b/a/e/b;)V

    goto :goto_d
.end method

.method public a(ILcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/a/f;)V
    .registers 9

    .prologue
    .line 753
    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/f;->g()I

    move-result v0

    if-lez v0, :cond_6

    .line 758
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v1

    .line 759
    :try_start_9
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/e/i;

    .line 760
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    .line 761
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_4a

    .line 764
    array-length v2, v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_4d

    aget-object v3, v0, v1

    .line 765
    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/i;->a()I

    move-result v4

    if-le v4, p1, :cond_47

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 766
    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/a/b/a/e/i;->c(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 767
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/i;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 764
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 761
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0

    .line 770
    :cond_4d
    return-void
.end method

.method public a(ZII)V
    .registers 7

    .prologue
    .line 740
    if-eqz p1, :cond_e

    .line 741
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->c(I)Lcom/bytedance/sdk/a/b/a/e/l;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_d

    .line 743
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/l;->b()V

    .line 749
    :cond_d
    :goto_d
    return-void

    .line 747
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ZIILcom/bytedance/sdk/a/b/a/e/l;)V

    goto :goto_d
.end method

.method public a(ZIILjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2, p4, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILjava/util/List;Z)V

    .line 671
    :cond_d
    :goto_d
    return-void

    .line 632
    :cond_e
    iget-object v6, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v6

    .line 633
    :try_start_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    .line 635
    if-nez v0, :cond_71

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->h:Z

    if-eqz v0, :cond_24

    monitor-exit v6

    goto :goto_d

    .line 666
    :catchall_21
    move-exception v0

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v0

    .line 640
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    if-gt p2, v0, :cond_2c

    monitor-exit v6

    goto :goto_d

    .line 643
    :cond_2c
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_38

    monitor-exit v6

    goto :goto_d

    .line 646
    :cond_38
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/a/b/a/e/i;-><init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V

    .line 648
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iput p2, v1, Lcom/bytedance/sdk/a/b/a/e/g;->f:I

    .line 649
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/g$c$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v7, v7, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/bytedance/sdk/a/b/a/e/g$c$1;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/a/b/a/e/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 664
    monitor-exit v6

    goto :goto_d

    .line 666
    :cond_71
    monitor-exit v6
    :try_end_72
    .catchall {:try_start_24 .. :try_end_72} :catchall_21

    .line 669
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Ljava/util/List;)V

    .line 670
    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->i()V

    goto :goto_d
.end method

.method public a(ZILcom/bytedance/sdk/a/a/e;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/a/e;IZ)V

    .line 622
    :cond_d
    :goto_d
    return-void

    .line 612
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(I)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object v0

    .line 613
    if-nez v0, :cond_22

    .line 614
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 615
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lcom/bytedance/sdk/a/a/e;->h(J)V

    goto :goto_d

    .line 618
    :cond_22
    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/a/e;I)V

    .line 619
    if-eqz p1, :cond_d

    .line 620
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->i()V

    goto :goto_d
.end method

.method public a(ZLcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 16

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 687
    .line 688
    const/4 v0, 0x0

    .line 689
    iget-object v8, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    monitor-enter v8

    .line 690
    :try_start_7
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v2, v2, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v2

    .line 691
    if-eqz p1, :cond_18

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/n;->a()V

    .line 692
    :cond_18
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v3, p2}, Lcom/bytedance/sdk/a/b/a/e/n;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 693
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/a/b/a/e/g$c;->a(Lcom/bytedance/sdk/a/b/a/e/n;)V

    .line 694
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v3

    .line 695
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9b

    if-eq v3, v2, :cond_9b

    .line 696
    sub-int v2, v3, v2

    int-to-long v2, v2

    .line 697
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    if-nez v4, :cond_42

    .line 698
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/g;->a(J)V

    .line 699
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/bytedance/sdk/a/b/a/e/g;->n:Z

    .line 701
    :cond_42
    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98

    .line 702
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v4, v4, Lcom/bytedance/sdk/a/b/a/e/g;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/e/i;

    move-wide v4, v2

    move-object v2, v0

    .line 705
    :goto_66
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/g$c$2;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-object v12, v12, Lcom/bytedance/sdk/a/b/a/e/g;->e:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v3, p0, v9, v10}, Lcom/bytedance/sdk/a/b/a/e/g$c$2;-><init>(Lcom/bytedance/sdk/a/b/a/e/g$c;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 711
    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_91

    .line 712
    if-eqz v2, :cond_97

    cmp-long v0, v4, v6

    if-eqz v0, :cond_97

    .line 713
    array-length v3, v2

    move v0, v1

    :goto_85
    if-ge v0, v3, :cond_97

    aget-object v1, v2, v0

    .line 714
    monitor-enter v1

    .line 715
    :try_start_8a
    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/a/b/a/e/i;->a(J)V

    .line 716
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_94

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 711
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v8
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0

    .line 716
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0

    .line 719
    :cond_97
    return-void

    :cond_98
    move-wide v4, v2

    move-object v2, v0

    goto :goto_66

    :cond_9b
    move-object v2, v0

    move-wide v4, v6

    goto :goto_66
.end method

.method protected b()V
    .registers 6

    .prologue
    .line 585
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 586
    sget-object v2, Lcom/bytedance/sdk/a/b/a/e/b;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 588
    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(Lcom/bytedance/sdk/a/b/a/e/h$b;)V

    .line 589
    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p0}, Lcom/bytedance/sdk/a/b/a/e/h;->a(ZLcom/bytedance/sdk/a/b/a/e/h$b;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 591
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 592
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_16} :catch_21
    .catchall {:try_start_4 .. :try_end_16} :catchall_31

    .line 598
    :try_start_16
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_46

    .line 601
    :goto_1b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 603
    :goto_20
    return-void

    .line 593
    :catch_21
    move-exception v1

    .line 594
    :try_start_22
    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_31

    .line 595
    :try_start_24
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_42

    .line 598
    :try_start_26
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_44

    .line 601
    :goto_2b
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_20

    .line 597
    :catchall_31
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 598
    :goto_35
    :try_start_35
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->c:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Lcom/bytedance/sdk/a/b/a/e/b;Lcom/bytedance/sdk/a/b/a/e/b;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_40

    .line 601
    :goto_3a
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/g$c;->a:Lcom/bytedance/sdk/a/b/a/e/h;

    invoke-static {v1}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/io/Closeable;)V

    .line 602
    throw v0

    .line 599
    :catch_40
    move-exception v1

    goto :goto_3a

    .line 597
    :catchall_42
    move-exception v0

    goto :goto_35

    .line 599
    :catch_44
    move-exception v0

    goto :goto_2b

    :catch_46
    move-exception v0

    goto :goto_1b
.end method
