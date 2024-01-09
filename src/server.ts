import cors from "cors"
import express, { Request, Response } from "express"
const port = 5000
const app = express()


app.use(cors())
//parse data
app.use(express.json())
app.use(express.urlencoded({ extended: true }))


app.get('/', (req: Request, res: Response) => {
    res.send('Soulmate Server Is Working V-1.0 !')
})

app.listen(port, () => {
    console.log(`Soulmate Server App listening On Port ${port}`)
})