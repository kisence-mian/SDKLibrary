.class public final Lcom/tramini/plugin/a/g/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    .line 23
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tramini/plugin/a/g/d;->a:Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 29
    return-void

    .line 28
    :catchall_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    return-void
.end method
