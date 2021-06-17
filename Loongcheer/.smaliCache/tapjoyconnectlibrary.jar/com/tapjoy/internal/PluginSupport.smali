.class public final Lcom/tapjoy/internal/PluginSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static trackUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dimensions"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .line 21
    nop

    .line 22
    :try_start_1
    invoke-static {p1}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 23
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_59

    .line 26
    :try_start_11
    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/bi;->a(Ljava/util/Map;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_18

    .line 28
    :try_start_14
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->close()V

    .line 29
    goto :goto_1f

    .line 28
    :catchall_18
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->close()V

    .line 29
    nop

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "dimensions":Ljava/lang/String;
    .end local p2    # "values":Ljava/lang/String;
    throw v0

    .line 22
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "dimensions":Ljava/lang/String;
    .restart local p2    # "values":Ljava/lang/String;
    :cond_1e
    move-object v0, v1

    .line 32
    :goto_1f
    nop

    .line 33
    invoke-static {p2}, Lcom/tapjoy/internal/ag;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {p2}, Lcom/tapjoy/internal/bi;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bi;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2f} :catch_59

    .line 37
    :try_start_2f
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->h()V

    .line 38
    :goto_32
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 39
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->q()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 41
    :cond_48
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->i()V
    :try_end_4b
    .catchall {:try_start_2f .. :try_end_4b} :catchall_4f

    .line 43
    :try_start_4b
    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->close()V

    .line 44
    goto :goto_55

    .line 43
    :catchall_4f
    move-exception v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/bi;->close()V

    .line 44
    nop

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "dimensions":Ljava/lang/String;
    .end local p2    # "values":Ljava/lang/String;
    throw v0

    .line 47
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "dimensions":Ljava/lang/String;
    .restart local p2    # "values":Ljava/lang/String;
    :cond_55
    :goto_55
    invoke-static {p0, v0, v1}, Lcom/tapjoy/internal/gh;->a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_58} :catch_59

    .line 51
    return-void

    .line 48
    :catch_59
    move-exception v0

    .line 52
    return-void
.end method
