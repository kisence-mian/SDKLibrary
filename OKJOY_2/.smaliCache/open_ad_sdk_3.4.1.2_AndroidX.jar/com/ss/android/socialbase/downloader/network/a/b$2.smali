.class final Lcom/ss/android/socialbase/downloader/network/a/b$2;
.super Ljava/lang/Object;
.source "DownloadPreconnecter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/network/a/b;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/socialbase/downloader/network/j;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/j;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    if-eqz v0, :cond_10

    .line 86
    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/network/j;->a(Ljava/util/Map;)V

    .line 88
    :cond_10
    return-void

    .line 90
    :cond_11
    nop

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    :try_start_14
    invoke-static {v2, v3, v1, v1}, Lcom/ss/android/socialbase/downloader/network/a/b;->a(JLcom/ss/android/socialbase/downloader/model/DownloadInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 97
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/a/c;

    move-result-object v1

    .line 99
    :cond_2e
    if-nez v1, :cond_51

    .line 100
    new-instance v4, Lcom/ss/android/socialbase/downloader/network/a/c;

    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/ss/android/socialbase/downloader/network/a/c;-><init>(Ljava/lang/String;Ljava/util/List;J)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_62
    .catchall {:try_start_14 .. :try_end_37} :catchall_60

    .line 101
    :try_start_37
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/a/c;->a()V

    .line 102
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/network/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 103
    invoke-static {}, Lcom/ss/android/socialbase/downloader/network/a/a;->a()Lcom/ss/android/socialbase/downloader/network/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/network/a/a;->a(Ljava/lang/String;Lcom/ss/android/socialbase/downloader/network/a/c;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_49} :catch_4e
    .catchall {:try_start_37 .. :try_end_49} :catchall_4b

    .line 106
    :cond_49
    move-object v1, v4

    goto :goto_51

    .line 113
    :catchall_4b
    move-exception v0

    move-object v1, v4

    goto :goto_6d

    .line 110
    :catch_4e
    move-exception v0

    move-object v1, v4

    goto :goto_63

    .line 106
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->i()Ljava/util/Map;

    move-result-object v0

    .line 107
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/a/b$2;->b:Lcom/ss/android/socialbase/downloader/network/j;

    if-eqz v2, :cond_5c

    .line 108
    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/network/j;->a(Ljava/util/Map;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_62
    .catchall {:try_start_51 .. :try_end_5c} :catchall_60

    .line 114
    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6a

    goto :goto_69

    .line 113
    :catchall_60
    move-exception v0

    goto :goto_6d

    .line 110
    :catch_62
    move-exception v0

    .line 111
    :goto_63
    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    .line 114
    :try_start_66
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    .line 116
    :goto_69
    goto :goto_6c

    .line 115
    :catchall_6a
    move-exception v0

    .line 117
    nop

    .line 119
    :goto_6c
    return-void

    .line 114
    :goto_6d
    :try_start_6d
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/network/a/c;->c()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    .line 116
    goto :goto_72

    .line 115
    :catchall_71
    move-exception v1

    .line 116
    :goto_72
    throw v0
.end method
