const config = {

	// max number of worker processes
	maxWorkers: 4,

	// port range for workers
	rtcMinPort: 2000,
	rtcMaxPort: 4000,

	// options for worker.createRouter (https://mediasoup.org/documentation/v3/mediasoup/api/#RouterOptions)
	routerOptions: {
		mediaCodecs: [
			{
				kind: 'audio',
				mimeType: 'audio/opus',
				clockRate: 48000,
				channels: 2,
			},
			{
				kind: 'video',
				mimeType: 'video/VP8',
				clockRate: 90000,
				parameters: {
					'x-google-start-bitrate': 1000,
				},
			}
		]
	},

	// options for router.createWebRtcTransport (https://mediasoup.org/documentation/v3/mediasoup/api/#WebRtcTransportOptions)
	webRtcTransportOptions: {
		listenIps: [
			{
				ip: '0.0.0.0',
				announcedIp: '127.0.0.1',
			}
		],
		enableUdp: true,
		enableTcp: true,
		preferUdp: true,
	},
}

export { config }
