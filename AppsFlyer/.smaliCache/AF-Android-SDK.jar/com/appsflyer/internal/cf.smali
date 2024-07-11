.class public final Lcom/appsflyer/internal/cf;
.super Ljava/lang/Object;


# direct methods
.method public static AFInAppEventParameterName(I)I
    .registers 7

    .line 1228
    sget-object v0, Lcom/appsflyer/internal/cb;->valueOf:Lcom/appsflyer/internal/cb;

    .line 1230
    ushr-int/lit8 v1, p0, 0x18

    .line 1231
    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 1232
    ushr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 1233
    and-int/lit16 p0, p0, 0xff

    .line 1235
    iget-object v4, v0, Lcom/appsflyer/internal/cb;->AFKeystoreWrapper:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v1, v4, v1

    iget-object v4, v0, Lcom/appsflyer/internal/cb;->AFKeystoreWrapper:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget v2, v4, v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/appsflyer/internal/cb;->AFKeystoreWrapper:[[I

    const/4 v4, 0x2

    aget-object v2, v2, v4

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v0, v0, Lcom/appsflyer/internal/cb;->AFKeystoreWrapper:[[I

    const/4 v2, 0x3

    aget-object v0, v0, v2

    aget p0, v0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method public static AFInAppEventParameterName([I)V
    .registers 4

    .line 1209
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_19

    .line 1211
    aget v1, p0, v0

    .line 1212
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, p0, v0

    .line 1213
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput v1, p0, v2

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1215
    :cond_19
    return-void
.end method

.method public static AFInAppEventParameterName([C[IZ)[I
    .registers 13

    .line 1160
    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    const/4 v3, 0x1

    aget-char v4, p0, v3

    add-int/2addr v1, v4

    .line 1161
    const/4 v4, 0x2

    aget-char v5, p0, v4

    shl-int/2addr v5, v2

    const/4 v6, 0x3

    aget-char v7, p0, v6

    add-int/2addr v5, v7

    .line 1164
    if-nez p2, :cond_17

    .line 1166
    invoke-static {p1}, Lcom/appsflyer/internal/cf;->AFInAppEventParameterName([I)V

    .line 1169
    :cond_17
    const/4 v7, 0x0

    :goto_18
    if-ge v7, v2, :cond_2b

    .line 1171
    aget v8, p1, v7

    xor-int/2addr v1, v8

    .line 1172
    invoke-static {v1}, Lcom/appsflyer/internal/cf;->AFInAppEventParameterName(I)I

    move-result v8

    xor-int/2addr v5, v8

    .line 1174
    nop

    .line 1175
    nop

    .line 1176
    nop

    .line 1169
    add-int/lit8 v7, v7, 0x1

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_18

    .line 1178
    :cond_2b
    nop

    .line 1179
    nop

    .line 1180
    nop

    .line 1182
    aget v2, p1, v2

    xor-int/2addr v1, v2

    .line 1183
    const/16 v2, 0x11

    aget v2, p1, v2

    xor-int/2addr v2, v5

    .line 1186
    new-array v5, v4, [I

    aput v2, v5, v0

    aput v1, v5, v3

    .line 1188
    ushr-int/lit8 v7, v2, 0x10

    int-to-char v7, v7

    aput-char v7, p0, v0

    .line 1189
    int-to-char v0, v2

    aput-char v0, p0, v3

    .line 1190
    ushr-int/lit8 v0, v1, 0x10

    int-to-char v0, v0

    aput-char v0, p0, v4

    .line 1191
    int-to-char v0, v1

    aput-char v0, p0, v6

    .line 1194
    if-nez p2, :cond_51

    .line 1196
    invoke-static {p1}, Lcom/appsflyer/internal/cf;->AFInAppEventParameterName([I)V

    .line 1198
    :cond_51
    return-object v5
.end method
