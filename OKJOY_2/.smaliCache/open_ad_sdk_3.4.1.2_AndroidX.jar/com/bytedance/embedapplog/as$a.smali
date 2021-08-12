.class Lcom/bytedance/embedapplog/as$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    .line 559
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 560
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 565
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 566
    sget-object v0, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/aq;

    .line 567
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/aq;->c()Ljava/lang/String;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_22

    .line 569
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 571
    :cond_22
    goto :goto_d

    .line 572
    :cond_23
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_2a

    .line 577
    :try_start_26
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_32

    goto :goto_31

    .line 573
    :catchall_2a
    move-exception v0

    .line 574
    :try_start_2b
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 577
    :try_start_2e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 580
    :goto_31
    goto :goto_37

    .line 578
    :catch_32
    move-exception p1

    .line 579
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 581
    nop

    .line 582
    :goto_37
    return-void

    .line 576
    :catchall_38
    move-exception v0

    .line 577
    :try_start_39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 580
    goto :goto_41

    .line 578
    :catch_3d
    move-exception p1

    .line 579
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 580
    :goto_41
    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/embedapplog/as$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 608
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/bytedance/embedapplog/bo;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    :try_start_21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 589
    sget-object p2, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/embedapplog/aq;

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/embedapplog/aq;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    goto :goto_2e

    .line 592
    :cond_55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5c

    .line 597
    :try_start_58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_66

    goto :goto_65

    .line 593
    :catchall_5c
    move-exception p2

    .line 594
    :try_start_5d
    const-string p3, ""

    invoke-static {p3, p2}, Lcom/bytedance/embedapplog/bo;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_6f

    .line 597
    :try_start_62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    .line 600
    :goto_65
    goto :goto_6b

    .line 598
    :catch_66
    move-exception p2

    .line 599
    invoke-static {p2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 601
    nop

    .line 602
    :goto_6b
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/as$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    return-void

    .line 596
    :catchall_6f
    move-exception p2

    .line 597
    :try_start_70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    .line 600
    goto :goto_78

    .line 598
    :catch_74
    move-exception p1

    .line 599
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 600
    :goto_78
    throw p2
.end method
