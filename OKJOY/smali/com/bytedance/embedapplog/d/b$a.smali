.class Lcom/bytedance/embedapplog/d/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 698
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 699
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 704
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 705
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/a;

    .line 706
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 707
    if-eqz v0, :cond_d

    .line 708
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23
    .catchall {:try_start_0 .. :try_end_22} :catchall_3c

    goto :goto_d

    .line 712
    :catch_23
    move-exception v0

    .line 713
    :try_start_24
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3c

    .line 716
    :try_start_27
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_37

    .line 721
    :goto_2a
    return-void

    .line 711
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_23
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c

    .line 716
    :try_start_2e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_2a

    .line 717
    :catch_32
    move-exception v0

    .line 718
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 717
    :catch_37
    move-exception v0

    .line 718
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 715
    :catchall_3c
    move-exception v0

    .line 716
    :try_start_3d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 719
    :goto_40
    throw v0

    .line 717
    :catch_41
    move-exception v1

    .line 718
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 746
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/embedapplog/d/b$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 747
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    .prologue
    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    :try_start_21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 728
    sget-object v0, Lcom/bytedance/embedapplog/d/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/d/a;

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/d/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_54} :catch_55
    .catchall {:try_start_21 .. :try_end_54} :catchall_73

    goto :goto_2e

    .line 732
    :catch_55
    move-exception v0

    .line 733
    :try_start_56
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/util/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_73

    .line 736
    :try_start_5b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_6e

    .line 741
    :goto_5e
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/d/b$a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 742
    return-void

    .line 731
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_55
    .catchall {:try_start_62 .. :try_end_65} :catchall_73

    .line 736
    :try_start_65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_5e

    .line 737
    :catch_69
    move-exception v0

    .line 738
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 737
    :catch_6e
    move-exception v0

    .line 738
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    .line 735
    :catchall_73
    move-exception v0

    .line 736
    :try_start_74
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    .line 739
    :goto_77
    throw v0

    .line 737
    :catch_78
    move-exception v1

    .line 738
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_77
.end method
