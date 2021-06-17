.class public Lcom/appsflyer/AFVersionDeclaration;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static googleSdkIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static init()V
    .registers 1

    .line 16
    const-string v0, "!SDK-VERSION-STRING!:com.appsflyer:af-android-sdk:6.3.0"

    sput-object v0, Lcom/appsflyer/AFVersionDeclaration;->googleSdkIdentifier:Ljava/lang/String;

    .line 17
    return-void
.end method
