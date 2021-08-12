.class public Lcom/kwad/sdk/utils/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)Ljava/lang/String;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_69

    const-wide/32 v2, 0x5265c00

    cmp-long v2, p0, v2

    if-ltz v2, :cond_e

    goto :goto_69

    :cond_e
    const-wide/16 v2, 0x3e8

    :try_start_10
    div-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    rem-long v4, p0, v2

    div-long v6, p0, v2

    rem-long/2addr v6, v2

    const-wide/16 v2, 0xe10

    div-long/2addr p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x2

    if-lez v0, :cond_50

    const-string v0, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v8

    invoke-virtual {v3, v0, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const-string p0, "%02d:%02d"

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-virtual {v3, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_69
    :goto_69
    const-string p0, "00:00"
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6b} :catch_6c

    return-object p0

    :catch_6c
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method
