.class public final enum Lcom/tds/util/Utils;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/Utils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/Utils;

.field public static final NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final unalignedAccessAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 19
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/tds/util/Utils;

    sput-object v1, Lcom/tds/util/Utils;->$VALUES:[Lcom/tds/util/Utils;

    .line 22
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sput-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 26
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "arch":Ljava/lang/String;
    const-string v2, "i386"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "amd64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "aarch64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v2, "ppc64le"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_41
    const/4 v0, 0x1

    :cond_42
    sput-boolean v0, Lcom/tds/util/Utils;->unalignedAccessAllowed:Z

    .line 30
    .end local v1    # "arch":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isUnalignedAccessAllowed()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/tds/util/Utils;->unalignedAccessAllowed:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/Utils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/tds/util/Utils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/Utils;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/Utils;
    .registers 1

    .line 19
    sget-object v0, Lcom/tds/util/Utils;->$VALUES:[Lcom/tds/util/Utils;

    invoke-virtual {v0}, [Lcom/tds/util/Utils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/Utils;

    return-object v0
.end method
