.class Lcom/bytedance/sdk/openadsdk/component/splash/b$7;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic h:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;IJLcom/bytedance/sdk/openadsdk/g/a/c;)V
    .registers 10

    .line 721
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->e:I

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->f:J

    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->g:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 725
    const-string v0, "splashLoadAd"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashAdLoadManager getFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Ljava/io/File;)V

    .line 729
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->q()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_39} :catch_3b

    return-object p1

    .line 733
    :cond_3a
    goto :goto_56

    .line 731
    :catch_3b
    move-exception p1

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datastoreGet throw IOException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_56
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .registers 5

    .line 754
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 758
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "splashLoadAd"

    if-eqz v8, :cond_4d

    iget-object v2, v8, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_4d

    .line 760
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 762
    const-string v2, "\u89c6\u9891\u6587\u4ef6\u83b7\u53d6\u6210\u529f, \u5c1d\u8bd5\u52a0\u8f7d\u89c6\u9891\u5f00\u5c4f"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v2, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;

    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b$7;)V

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/a$d;)V

    .line 771
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->f:J

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-wide/16 v6, 0x0

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_95

    .line 774
    :cond_4d
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    .line 775
    const/16 v2, -0xe

    .line 776
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->g:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v3

    .line 777
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 778
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v11, 0x2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->g:Lcom/bytedance/sdk/openadsdk/g/a/c;

    const/16 v12, -0xe

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 779
    const-string v2, "\u89c6\u9891\u6587\u4ef6\u7f13\u5b58\u5931\u8d25 response == null REQUEST_TYPE_REAL_NETWORK"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v10, 0x3a98

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v3

    invoke-static/range {v9 .. v14}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 781
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->f:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v8, :cond_8e

    const-wide/16 v6, -0x3

    goto :goto_90

    :cond_8e
    iget-wide v6, v8, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_90
    move-object/from16 v8, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 783
    :goto_95
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 739
    if-eqz p2, :cond_36

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashAdLoadManager \u89c6\u9891\u6587\u4ef6\u4e0b\u8f7d\u6210\u529f\u4fdd\u5b58\u5230\u672c\u5730 putFile s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " File "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splashLoadAd"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Ljava/io/File;)V

    .line 742
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/io/File;)V

    .line 744
    :cond_36
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 748
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a:Ljava/io/File;

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;I)I

    .line 788
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->f:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_f

    const-wide/16 v0, -0x2

    goto :goto_11

    :cond_f
    iget-wide v0, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_11
    move-wide v7, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 789
    const/16 p1, -0xe

    .line 790
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->g:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 791
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 792
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->g:Lcom/bytedance/sdk/openadsdk/g/a/c;

    const/16 v5, -0xe

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 793
    const-string p1, "splashLoadAd"

    const-string v1, "\u89c6\u9891\u6587\u4ef6\u7f13\u5b58\u5931\u8d25 onErrorResponse REQUEST_TYPE_REAL_NETWORK"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v3, 0x3a98

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 795
    return-void
.end method
