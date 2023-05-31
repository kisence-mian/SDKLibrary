.class public final Lcom/mintegral/msdk/mtgnative/e/a;
.super Ljava/lang/Object;
.source "NativeReport.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 224
    if-eqz p0, :cond_c8

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "key=2000047&"

    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sys_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_6b
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bkup_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_8d
    if-eqz p3, :cond_94

    .line 236
    const-string v1, "hb=1&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    if-eqz p0, :cond_c8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_af} :catch_d7

    move-result v1

    if-nez v1, :cond_c8

    .line 1160
    :try_start_b2
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1161
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1162
    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/common/e/c;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1163
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgnative/e/a$2;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgnative/e/a$2;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c8} :catch_c9
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_c8} :catch_d7

    .line 1179
    :cond_c8
    :goto_c8
    return-void

    .line 1176
    :catch_c9
    move-exception v0

    .line 1177
    :try_start_ca
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1178
    const-string v1, "NativeReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_d6} :catch_d7

    goto :goto_c8

    .line 242
    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c8
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 191
    if-eqz p0, :cond_c6

    if-eqz p1, :cond_c6

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 192
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "key=2000048&"

    .line 193
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 194
    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_44

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "cid="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 197
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "network_type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unit_id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    if-eqz p1, :cond_c7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_c7

    .line 200
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 201
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rid_n="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 208
    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    if-eqz p0, :cond_c6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_ad} :catch_fa

    move-result v1

    if-nez v1, :cond_c6

    .line 1130
    :try_start_b0
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1131
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1132
    invoke-static {v0, p0, p2}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1133
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgnative/e/a$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgnative/e/a$1;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c6} :catch_ec
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_c6} :catch_fa

    .line 1149
    :cond_c6
    :goto_c6
    return-void

    .line 203
    :cond_c7
    :try_start_c7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_ff

    .line 204
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 205
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rid_n="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_9e

    .line 1146
    :catch_ec
    move-exception v0

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1148
    const-string v1, "NativeReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_f9} :catch_fa

    goto :goto_c6

    .line 211
    :catch_fa
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c6

    :cond_ff
    move-object v0, v1

    goto :goto_9e
.end method
