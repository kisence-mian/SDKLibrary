.class public Lcom/tds/achievement/CryptoUtils$EncryptData;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptData"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field encryptString:Ljava/lang/String;

.field iv:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 232
    const-string v0, "[i]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, "iIndex":I
    iput-object p1, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->alias:Ljava/lang/String;

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    .line 235
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "ivStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/tds/achievement/CryptoUtils$StringUtils;->string2Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->iv:[B

    .line 238
    .end local v0    # "iIndex":I
    .end local v1    # "ivStr":Ljava/lang/String;
    :cond_24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encryptString"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->alias:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    .line 227
    iput-object p3, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->iv:[B

    .line 228
    return-void
.end method


# virtual methods
.method public getEncryptString()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    return-object v0
.end method

.method public getIv()[B
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->iv:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->encryptString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[i]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/achievement/CryptoUtils$EncryptData;->iv:[B

    invoke-static {v1}, Lcom/tds/achievement/CryptoUtils$StringUtils;->bytes2String([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
