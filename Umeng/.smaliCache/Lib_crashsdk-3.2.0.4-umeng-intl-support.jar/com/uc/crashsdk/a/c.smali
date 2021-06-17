.class public Lcom/uc/crashsdk/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a/c;->a:Z

    .line 244
    const-string v0, ""

    sput-object v0, Lcom/uc/crashsdk/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[B)V
    .registers 7

    .line 749
    sget-boolean v0, Lcom/uc/crashsdk/a/c;->a:Z

    const/4 v1, 0x4

    if-nez v0, :cond_f

    array-length v0, p2

    if-ne v0, v1, :cond_9

    goto :goto_f

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 750
    :cond_f
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1b

    .line 751
    add-int v2, v0, p1

    aget-byte v3, p2, v0

    aput-byte v3, p0, v2

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 753
    :cond_1b
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 787
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_24

    .line 791
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/c;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 792
    const/4 p0, 0x1

    return p0

    .line 794
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload try again: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "crashsdk"

    invoke-static {v3, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 796
    :cond_24
    return v0
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    .line 815
    const-string v0, "crashsdk"

    .line 816
    nop

    .line 817
    nop

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploading to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V

    .line 821
    nop

    .line 823
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_19
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_14a

    .line 825
    const/16 v3, 0x2710

    :try_start_26
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 826
    const v3, 0xea60

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 827
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 828
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 829
    const-string v4, "POST"

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    const-string v5, "------------izQ290kHh6g3Yn2IeyJCoc\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v5, "Content-Disposition: form-data; name=\"file\";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v5, " filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v5, "Content-Type: application/octet-stream\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v5, "\r\n------------izQ290kHh6g3Yn2IeyJCoc--\r\n"

    .line 841
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    array-length v7, p0

    add-int/2addr v6, v7

    .line 842
    const-string v7, "Content-Type"

    const-string v8, "multipart/form-data; boundary=----------izQ290kHh6g3Yn2IeyJCoc"

    invoke-virtual {p2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v7, "Content-Disposition"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "form-data; name=\"file\"; filename="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string p1, "Content-Length"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_9b
    .catchall {:try_start_26 .. :try_end_9b} :catchall_146

    .line 849
    :try_start_9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 850
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 851
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 853
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_9b .. :try_end_c6} :catchall_141

    .line 855
    const/16 v4, 0xc8

    if-eq p0, v4, :cond_dd

    .line 856
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 882
    if-eqz p2, :cond_db

    .line 883
    :try_start_d5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    goto :goto_db

    .line 885
    :catchall_d9
    move-exception p0

    goto :goto_dc

    .line 886
    :cond_db
    :goto_db
    nop

    .line 856
    :goto_dc
    return v1

    .line 860
    :cond_dd
    :try_start_dd
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_141

    .line 861
    const/16 v4, 0x400

    :try_start_e3
    new-array v4, v4, [B

    .line 862
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_ee
    .catchall {:try_start_e3 .. :try_end_ee} :catchall_13e

    .line 864
    :goto_ee
    :try_start_ee
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_f9

    .line 865
    invoke-virtual {v5, v4, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_ee

    .line 868
    :cond_f9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 869
    if-eqz v2, :cond_129

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Log upload response: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catchall {:try_start_ee .. :try_end_116} :catchall_13c

    .line 871
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 882
    if-eqz p2, :cond_127

    .line 883
    :try_start_121
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_125

    goto :goto_127

    .line 885
    :catchall_125
    move-exception p0

    goto :goto_128

    .line 886
    :cond_127
    :goto_127
    nop

    .line 871
    :goto_128
    return v3

    .line 873
    :cond_129
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 882
    if-eqz p2, :cond_13a

    .line 883
    :try_start_134
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_138

    goto :goto_13a

    .line 885
    :catchall_138
    move-exception p0

    goto :goto_13b

    .line 886
    :cond_13a
    :goto_13a
    nop

    .line 873
    :goto_13b
    return v1

    .line 874
    :catchall_13c
    move-exception v0

    goto :goto_144

    :catchall_13e
    move-exception v0

    move-object v5, v2

    goto :goto_144

    :catchall_141
    move-exception v0

    move-object p0, v2

    move-object v5, p0

    :goto_144
    move-object v2, p1

    goto :goto_14e

    :catchall_146
    move-exception v0

    move-object p0, v2

    move-object v5, p0

    goto :goto_14e

    :catchall_14a
    move-exception v0

    move-object p0, v2

    move-object p2, p0

    move-object v5, p2

    :goto_14e
    :try_start_14e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_164

    .line 877
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 882
    if-eqz p2, :cond_162

    .line 883
    :try_start_15c
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_160

    goto :goto_162

    .line 885
    :catchall_160
    move-exception p0

    .line 887
    goto :goto_163

    .line 886
    :cond_162
    :goto_162
    nop

    .line 889
    :goto_163
    return v1

    .line 877
    :catchall_164
    move-exception p1

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 882
    if-eqz p2, :cond_176

    .line 883
    :try_start_170
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_174

    goto :goto_176

    .line 885
    :catchall_174
    move-exception p0

    goto :goto_177

    .line 886
    :cond_176
    :goto_176
    nop

    :goto_177
    goto :goto_179

    :goto_178
    throw p1

    :goto_179
    goto :goto_178
.end method

.method public static a()[B
    .registers 1

    .line 689
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x30t
        0x19t
        0x6t
        0x37t
    .end array-data
.end method

.method private static a(Ljava/io/File;)[B
    .registers 8

    .line 756
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 757
    return-object v1

    .line 760
    :cond_8
    nop

    .line 761
    nop

    .line 762
    nop

    .line 764
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 765
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_3f
    .catchall {:try_start_b .. :try_end_15} :catchall_3c

    .line 766
    :try_start_15
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_39
    .catchall {:try_start_15 .. :try_end_1a} :catchall_4d

    .line 767
    :try_start_1a
    new-array v1, v0, [B

    .line 768
    const/4 v3, 0x0

    .line 769
    :goto_1d
    if-ge v3, v0, :cond_2a

    .line 770
    sub-int v4, v0, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_34
    .catchall {:try_start_1a .. :try_end_25} :catchall_31

    .line 771
    const/4 v5, -0x1

    if-eq v5, v4, :cond_2a

    .line 772
    add-int/2addr v3, v4

    .line 775
    goto :goto_1d

    .line 779
    :cond_2a
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 781
    goto :goto_4c

    .line 779
    :catchall_31
    move-exception v0

    move-object v1, p0

    goto :goto_4e

    .line 776
    :catch_34
    move-exception v0

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    goto :goto_42

    :catch_39
    move-exception v0

    move-object p0, v1

    goto :goto_42

    .line 779
    :catchall_3c
    move-exception v0

    move-object v2, v1

    goto :goto_4e

    .line 776
    :catch_3f
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    :goto_42
    :try_start_42
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 779
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 781
    move-object v1, p0

    .line 782
    :goto_4c
    return-object v1

    .line 779
    :catchall_4d
    move-exception v0

    :goto_4e
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 9

    .line 693
    nop

    .line 694
    nop

    .line 695
    nop

    .line 697
    nop

    .line 699
    const/4 v0, 0x0

    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_9a

    .line 701
    const/16 v1, 0x1388

    :try_start_12
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 702
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 703
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 704
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 705
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 706
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 707
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v2, "Content-Length"

    array-length v3, p1

    .line 710
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_97

    .line 712
    :try_start_3d
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 714
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_93

    .line 715
    const/16 v3, 0xc8

    if-eq p1, v3, :cond_5b

    .line 716
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 738
    if-eqz p0, :cond_59

    .line 739
    :try_start_53
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_59

    .line 741
    :catchall_57
    move-exception p0

    goto :goto_5a

    .line 742
    :cond_59
    :goto_59
    nop

    .line 716
    :goto_5a
    return-object v0

    .line 719
    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_93

    .line 720
    const/16 v3, 0x400

    :try_start_61
    new-array v3, v3, [B

    .line 721
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_90

    .line 723
    :goto_6c
    :try_start_6c
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_77

    .line 724
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6c

    .line 727
    :cond_77
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_7b
    .catchall {:try_start_6c .. :try_end_7b} :catchall_8e

    .line 733
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 738
    if-eqz p0, :cond_8c

    .line 739
    :try_start_86
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8c

    .line 741
    :catchall_8a
    move-exception p0

    goto :goto_8d

    .line 742
    :cond_8c
    :goto_8c
    nop

    .line 727
    :goto_8d
    return-object v0

    .line 728
    :catchall_8e
    move-exception v1

    goto :goto_9f

    :catchall_90
    move-exception v1

    move-object v4, v0

    goto :goto_9f

    :catchall_93
    move-exception p1

    move-object p1, v0

    move-object v4, p1

    goto :goto_9f

    :catchall_97
    move-exception p1

    move-object p1, v0

    goto :goto_9d

    :catchall_9a
    move-exception p0

    move-object p0, v0

    move-object p1, p0

    :goto_9d
    move-object v2, p1

    move-object v4, v2

    .line 729
    :goto_9f
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 738
    if-eqz p0, :cond_b0

    .line 739
    :try_start_aa
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b0

    .line 741
    :catchall_ae
    move-exception p0

    .line 743
    goto :goto_b1

    .line 742
    :cond_b0
    :goto_b0
    nop

    .line 745
    :goto_b1
    return-object v0
.end method

.method private static a([B)[B
    .registers 7

    .line 670
    array-length v0, p0

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 673
    array-length v2, p0

    shr-int/lit8 v3, v2, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v0, v5

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 674
    const/4 v2, 0x4

    :goto_28
    if-ge v2, v1, :cond_2f

    .line 675
    aput-byte v4, v0, v2

    .line 674
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 677
    :cond_2f
    array-length v2, p0

    invoke-static {p0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    return-object v0
.end method

.method public static a([B[B)[B
    .registers 4

    .line 635
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[BZ)[B
    .registers 4

    .line 640
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[BZZ)[B
    .registers 7

    .line 650
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_36

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 652
    nop

    .line 654
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 655
    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 656
    if-eqz p2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x2

    :goto_1f
    invoke-virtual {p1, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 658
    if-eqz p2, :cond_30

    .line 659
    if-eqz p3, :cond_27

    goto :goto_2b

    :cond_27
    invoke-static {p0}, Lcom/uc/crashsdk/a/c;->a([B)[B

    move-result-object p0

    :goto_2b
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 661
    :cond_30
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    nop

    :array_36
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 801
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;)[B

    move-result-object p0

    .line 802
    if-eqz p0, :cond_10

    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_10

    .line 805
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/c;->a([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    return p0

    .line 803
    :cond_10
    :goto_10
    return v0

    .line 806
    :catch_11
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 808
    return v0
.end method

.method public static b([B[B)[B
    .registers 3

    .line 644
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method
