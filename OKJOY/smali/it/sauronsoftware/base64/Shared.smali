.class Lit/sauronsoftware/base64/Shared;
.super Ljava/lang/Object;


# static fields
.field static chars:Ljava/lang/String;

.field static pad:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lit/sauronsoftware/base64/Shared;->chars:Ljava/lang/String;

    const/16 v0, 0x3d

    sput-char v0, Lit/sauronsoftware/base64/Shared;->pad:C

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
