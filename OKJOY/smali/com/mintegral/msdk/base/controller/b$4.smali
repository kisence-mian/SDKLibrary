.class final Lcom/mintegral/msdk/base/controller/b$4;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/controller/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 2

    .prologue
    .line 792
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    const/16 v3, 0x14

    .line 799
    :try_start_2
    invoke-static {}, Lcom/mintegral/msdk/base/common/e/c/a;->a()Lcom/mintegral/msdk/base/common/e/c/a;

    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/e/c/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 801
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v1, v1, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 802
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 803
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v0, v0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 806
    :cond_2b
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v0}, Lcom/mintegral/msdk/base/controller/b;->b(Lcom/mintegral/msdk/base/controller/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    .line 807
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/e;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/e;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/e;->d()I

    move-result v2

    if-lt v2, v3, :cond_57

    .line 810
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/e;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 812
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    const/4 v1, 0x4

    iput v1, v2, Landroid/os/Message;->what:I

    .line 814
    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v1, v1, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    :cond_57
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/n;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/n;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/n;->c()I

    move-result v1

    if-le v1, v3, :cond_1f4

    .line 819
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/n;->d()Ljava/util/List;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_24b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24b

    .line 1175
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_76
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/i;

    .line 1177
    invoke-static {}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a()Lcom/mintegral/msdk/base/controller/authoritycontroller/a;

    const-string v3, "authority_general_data"

    invoke-static {v3}, Lcom/mintegral/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_166

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad_source_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&num="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&unit_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "&key=2000006"

    .line 1183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&fb="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&network_str="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&network_type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1198
    :goto_133
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->a()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13f

    .line 1199
    const-string v3, "&hb=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1201
    :cond_13f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&timeout="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15b} :catch_15d

    goto/16 :goto_76

    .line 841
    :catch_15d
    move-exception v0

    const-string v0, "SDKController"

    const-string v1, "report netstate error !"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_165
    return-void

    .line 1189
    :cond_166
    :try_start_166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad_source_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&num="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&unit_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "&key=2000006"

    .line 1194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&fb="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/i;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_133

    .line 1203
    :cond_1e0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    :goto_1e4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 821
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 822
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->what:I

    .line 823
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v0, v0, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 825
    :cond_1f4
    sget-object v0, Lcom/mintegral/msdk/base/common/b/c;->i:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 826
    const-string v2, "/"

    .line 827
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_165

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_165

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_165

    .line 830
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_21a
    if-ge v0, v4, :cond_165

    aget-object v5, v3, v0

    .line 831
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 833
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 834
    const/4 v6, 0x3

    iput v6, v5, Landroid/os/Message;->what:I

    .line 835
    iget-object v6, p0, Lcom/mintegral/msdk/base/controller/b$4;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v6, v6, Lcom/mintegral/msdk/base/controller/b;->i:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_248} :catch_15d

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_21a

    .line 1205
    :cond_24b
    const/4 v0, 0x0

    goto :goto_1e4
.end method
