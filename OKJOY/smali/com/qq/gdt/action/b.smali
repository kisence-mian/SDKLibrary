.class public Lcom/qq/gdt/action/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/b$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/qq/gdt/action/b;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/Random;

.field private volatile f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qq/gdt/action/b;->b:Ljava/lang/Object;

    new-instance v0, Lcom/qq/gdt/action/b$1;

    invoke-direct {v0}, Lcom/qq/gdt/action/b$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/16 v4, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/qq/gdt/action/b;->e:Ljava/util/Random;

    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/qq/gdt/action/b;->f:Ljava/lang/String;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/qq/gdt/action/b;->g:I

    const v0, 0xea60

    iput v0, p0, Lcom/qq/gdt/action/b;->h:I

    iput v4, p0, Lcom/qq/gdt/action/b;->i:I

    iput v4, p0, Lcom/qq/gdt/action/b;->j:I

    iput v1, p0, Lcom/qq/gdt/action/b;->k:I

    iput v1, p0, Lcom/qq/gdt/action/b;->l:I

    sget-object v0, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    iput-object v0, p0, Lcom/qq/gdt/action/b;->m:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/b;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/b;
    .registers 3

    sget-object v0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    if-nez v0, :cond_13

    const-class v1, Lcom/qq/gdt/action/b;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    if-nez v0, :cond_12

    new-instance v0, Lcom/qq/gdt/action/b;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/qq/gdt/action/b;->a:Lcom/qq/gdt/action/b;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v1, Lcom/qq/gdt/action/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/qq/gdt/action/h/h;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======>UpdateSDKConfig:\nversion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\noriginal_config_str = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_d2

    :try_start_33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qq/gdt/action/b;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/b;->b(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v0, Lcom/qq/gdt/action/b;->c:Ljava/util/Set;

    :cond_46
    iput-object v0, p0, Lcom/qq/gdt/action/b;->m:Ljava/util/Set;

    const-string v0, "flush_interval"

    const/16 v3, 0x7530

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->g:I

    const-string v0, "ticket_interval"

    const v3, 0xea60

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->h:I

    const-string v0, "his_report_rate"

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->i:I

    const-string v0, "dp3_report_rate"

    const/16 v3, 0x64

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->j:I

    const-string v0, "action_record_strategy"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->k:I

    const-string v0, "event_record_strategy"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/b;->l:I

    const-string v0, "=====>Apply config:\nversion = %s\nflushInterval = %d\nhisReportRate = %d\ndp3ReportRate = %d\nimportantActionTypes = %s\nactionRecordStrategy = %d\neventRecordStrategy = %d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qq/gdt/action/b;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/qq/gdt/action/b;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/qq/gdt/action/b;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/qq/gdt/action/b;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/qq/gdt/action/b;->m:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/qq/gdt/action/b;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/qq/gdt/action/b;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c9
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_c9} :catch_cb
    .catchall {:try_start_33 .. :try_end_c9} :catchall_d2

    :goto_c9
    :try_start_c9
    monitor-exit v1

    return-void

    :catch_cb
    move-exception v0

    const-string v2, "Json parse exception"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c9

    :catchall_d2
    move-exception v0

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_d2

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/qq/gdt/action/h/h;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/r;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/qq/gdt/action/h/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->j()Ljava/io/File;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_14
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_38
    .catchall {:try_start_14 .. :try_end_1e} :catchall_47

    :try_start_1e
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->i()Ljava/io/File;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qq/gdt/action/h/i;->a(Ljava/io/File;Ljava/io/File;)Z

    invoke-direct {p0, p1, p3}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_5b
    .catchall {:try_start_1e .. :try_end_31} :catchall_59

    const/4 v0, 0x1

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_55

    :cond_37
    :goto_37
    return v0

    :catch_38
    move-exception v1

    move-object v1, v2

    :goto_3a
    :try_start_3a
    const-string v2, "Exception while persist config"

    invoke-static {v2}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_59

    if-eqz v1, :cond_37

    :try_start_41
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_37

    :catch_45
    move-exception v1

    goto :goto_37

    :catchall_47
    move-exception v0

    move-object v1, v2

    :goto_49
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_57

    :cond_4e
    :goto_4e
    throw v0

    :cond_4f
    const-string v1, "Fail to update conf for sign check error"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_37

    :catch_55
    move-exception v1

    goto :goto_37

    :catch_57
    move-exception v1

    goto :goto_4e

    :catchall_59
    move-exception v0

    goto :goto_49

    :catch_5b
    move-exception v2

    goto :goto_3a
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "action_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_24

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_24
    return-object v2
.end method

.method private g()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/b;->h()Lcom/qq/gdt/action/b$a;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/qq/gdt/action/b$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/qq/gdt/action/h/h;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/r;->a([B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/qq/gdt/action/b$a;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/qq/gdt/action/h/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/qq/gdt/action/b$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/qq/gdt/action/b$a;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "Fail to verify local config file"

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_1f

    :catch_26
    move-exception v0

    const-string v1, "Load SDKConfig from local exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method private h()Lcom/qq/gdt/action/b$a;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->i()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    const-string v0, "SDKConfig file not exist"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    new-instance v0, Lcom/qq/gdt/action/b$a;

    invoke-direct {v0, v2, v3, v4}, Lcom/qq/gdt/action/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private i()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->k()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdk.conf"

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private j()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/qq/gdt/action/b;->k()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdk.conf.tmp"

    invoke-direct {p0, v2}, Lcom/qq/gdt/action/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private k()Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/qq/gdt/action/b;->d:Landroid/content/Context;

    const-string v1, "a_gdt_qq_com_conf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/gdt/action/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/b;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "conf_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1, v2, v3}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/b;->g:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/b;->h:I

    return v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/qq/gdt/action/b;->e:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/qq/gdt/action/b;->j:I

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/b;->k:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/b;->l:I

    return v0
.end method
