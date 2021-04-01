.class public Lcom/anythink/china/api/ApkErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final exception:Ljava/lang/String; = "10000"

.field public static final fail_connect:Ljava/lang/String; = "Http connect error!"

.field public static final fail_save:Ljava/lang/String; = "Save fail!"

.field public static final httpStatuException:Ljava/lang/String; = "10001"

.field public static final timeOutError:Ljava/lang/String; = "20001"

.field public static final unknow:Ljava/lang/String; = "-9999"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/api/ApkError;
    .registers 3

    .prologue
    .line 17
    new-instance v0, Lcom/anythink/china/api/ApkError;

    invoke-direct {v0, p0, p1}, Lcom/anythink/china/api/ApkError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
